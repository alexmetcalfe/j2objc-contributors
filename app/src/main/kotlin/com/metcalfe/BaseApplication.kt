package com.metcalfe

import android.app.Application

/**
 * Created by alex on 15/07/15.
 */
class BaseApplication : Application() {

    private val component: SharedComponent? = null

    override fun onCreate() {
        super.onCreate()
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
