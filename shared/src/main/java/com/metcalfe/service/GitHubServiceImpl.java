package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.json.JSONException;

import java.util.List;

import rx.Observable;
import rx.functions.Func0;

/**
 * Created by alex on 12/07/15.
 */
public class GitHubServiceImpl implements GitHubService {

    public static final String API_URL = "https://api.github.com/repos/google/j2objc/contributors";

    private HttpClient httpClient;

    public GitHubServiceImpl(HttpClient simpleHttpClient) {
        this.httpClient = simpleHttpClient;
    }

    @Override
    public List<Contributor> contributors() {
        final String json = httpClient.performGet(API_URL);

        List<Contributor> contributors = null;

        try {
            contributors = new ContributorMapper().mapAll(json);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return contributors;
    }

    @Override
    public Observable<List<Contributor>> observeContributors() {
        return Observable.defer(new Func0<Observable<List<Contributor>>>() {
            @Override
            public Observable<List<Contributor>> call() {
                return Observable.just(contributors());
            }
        });
    }

}
