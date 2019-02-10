package com.imbaya.androidhook;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("hello");
        System.loadLibrary("InlineHook");
    }
    TextView tv;
    Button bt;
    Button btdelete;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Example of a call to a native method
        tv = findViewById(R.id.sample_text);
        bt=findViewById(R.id.hook);
        bt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                inlinehook();
            }
        });
        btdelete=findViewById(R.id.delete);
        btdelete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                deleteinlinehook();
            }
        });




        new Thread(){
            @Override
            public  void run(){
                while(true)
                {
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            tv.setText(stringFromJNI());
                        }
                    });
                }

            }
        }.start();


    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();

    public native void inlinehook();
    public native void  deleteinlinehook();
}
