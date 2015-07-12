package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import java.util.List;

import rx.Observable;

/**
 * Created by alex on 12/07/15.
 */
public interface GitHubService {

    List<Contributor> contributors();

    Observable<List<Contributor>> observeContributors();

}
