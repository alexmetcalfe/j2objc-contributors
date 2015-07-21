package com.metcalfe;

import javax.inject.Singleton;

import dagger.Component;

/**
 * Created by alex on 15/07/15.
 */
@Singleton
@Component(modules = {SharedModule.class})
public interface SharedComponent {
    void inject(ContributorListFragment fragment);
}
