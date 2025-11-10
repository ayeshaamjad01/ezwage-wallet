package com.ezwage.employee

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Intent
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterFragmentActivity
import android.view.WindowManager.LayoutParams
import com.digitt.sdk.DigittSDK
import com.digitt.sdk.DigittLauncherActivity
import com.digitt.sdk.CustomUI
import com.digitt.sdk.CustomDialog
import com.digitt.sdk.DigittResponse

class MainActivity : FlutterFragmentActivity() {

    private val CHANNEL = "com.ezwage.employee/digitt"

    private val fingerResultLauncher =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            if (result.resultCode == DigittLauncherActivity.KEYS.DIGITT_RESPONSE_CODE) {
                val response = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                    result.data?.getSerializableExtra(
                        DigittLauncherActivity.KEYS.DIGITT_SDK_RESULT,
                        DigittResponse::class.java
                    )
                } else {
                    @Suppress("DEPRECATION")
                    result.data?.getSerializableExtra(DigittLauncherActivity.KEYS.DIGITT_SDK_RESULT) as? DigittResponse
                }

                Toast.makeText(this, response?.responseMessage ?: "No Response", Toast.LENGTH_SHORT).show()
            }
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.addFlags(LayoutParams.FLAG_SECURE)
    }

    fun launchDigittSDK(clientId: String, clientSecret: String, partnerId: String, mobile: String, cnic: String) {
        val themeColor = ContextCompat.getColor(this, R.color.black)
        val accentColor = ContextCompat.getColor(this, R.color.white)

        val customUI = CustomUI()
            .setAppBarTextColor(accentColor)
            .setAppBarColor(themeColor)
            .setIconsColor(accentColor)
            .setGuidanceScreenBackgroundColor(themeColor)
            .setGuidanceScreenButtonColor(accentColor)
            .setGuidanceScreenButtonTextColor(themeColor)
            .setGuidanceScreenFullWidthButton(true)
            .setGuidanceScreenButtonText("Continue")
            .setGuidanceScreenInstructionTextColor(accentColor)
            .setAppBarBackgroundImage(0)
            .setGuidanceScreenInstructionText("Line up your hand with the guide\nKeep your fingers together\nThen stay still.")
            .setGuidanceScreenAppBarTitle("Guidance")
            .setSplashScreenLoaderColor(themeColor)
            .setSplashScreenMessageColor(themeColor)
            .setSplashScreenMessage("Please wait …")

        val customDialog = CustomDialog()
            .setDialogBackgroundColor(accentColor)
            .setDialogTitleColor(themeColor)
            .setDialogMessageColor(Color.GRAY)
            .setDialogImageBackgroundColor(themeColor)
            .setDialogImageForegroundColor(themeColor)
            .setDialogButtonBackgroundColor(themeColor)
            .setDialogButtonTextColor(accentColor)
            .setSuccessDialogTitle("SUCCESS!")
            .setSuccessDialogMessage("Scan Complete")
            .setSuccessDialogButtonText("Next")
            .setSwitchHandDialogTitle("SUCCESS!")
            .setSwitchHandDialogMessage("Please change hand")
            .setSwitchHandDialogButtonText("Next")
            .setErrorDialogTitle("Please try again")

        val config = DigittSDK.Builder()
            .setClientID(clientId)
            .setClientSecret(clientSecret)
            .setPartnerID(partnerId)
            .setMobile(mobile)
            .setCNIC(cnic)
            .setCustomUI(customUI)
            .setCustomDialog(customDialog)
            .build()

        val intent = Intent(this, DigittLauncherActivity::class.java)
        intent.putExtra(DigittLauncherActivity.KEYS.DIGITT_SDK_CONFIG, config)
        fingerResultLauncher.launch(intent)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                if (call.method == "launchDigittSDK") {
                    val args = call.arguments as? Map<String, Any?> ?: emptyMap()
                    launchDigittSDK(
                        args["clientId"] as? String ?: "",
                        args["clientSecret"] as? String ?: "",
                        args["partnerId"] as? String ?: "",
                        args["mobile"] as? String ?: "",
                        args["cnic"] as? String ?: ""
                    )
                    result.success("Launched Digitt SDK")
                } else {
                    result.notImplemented()
                }
            }
    }
}
