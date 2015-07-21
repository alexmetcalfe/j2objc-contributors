package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.json.JSONException;

import java.util.List;

import javax.inject.Inject;

/**
 * Created by alex on 12/07/15.
 */
public class GitHubServiceImpl implements GitHubService {

    public static final String API_URL = "https://api.github.com/repos/google/j2objc/contributors";

    private HttpClient httpClient;
    private ContributorMapper contributorMapper;

    @Inject
    public GitHubServiceImpl(HttpClient httpClient, ContributorMapper mapper) {
        this.httpClient = httpClient;
        this.contributorMapper = mapper;
    }

    @Override
    public List<Contributor> contributors() {
        try {
            final String json = httpClient.performGet(API_URL);
            return contributorMapper.mapAll(json);
        } catch(JSONException e) {
            return null;
        }
    }

}
