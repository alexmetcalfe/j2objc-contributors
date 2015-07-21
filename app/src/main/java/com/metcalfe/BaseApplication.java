package com.metcalfe;

import android.app.Application;

/**
 * Created by alex on 15/07/15.
 */
public class BaseApplication extends Application {

    private SharedComponent component;

    @Override
    public void onCreate() {
        super.onCreate();
       // buildComponentAndInject();
    }

//    public void buildComponentAndInject() {
//        component = DaggerComponentInitializer.init(this);
//    }
//
//    public static SharedComponent component(Context context) {
//        return ((BaseApplication) context.getApplicationContext()).component;
//    }
//
//    public final static class DaggerComponentInitializer {
//
//        public static SharedComponent init(BaseApplication app) {
//            return SharedComponent.builder()
//                    .systemServicesModule(new SharedModule())
//                    .build();
//        }
//
//    }
}
