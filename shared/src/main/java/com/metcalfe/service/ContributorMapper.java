package com.metcalfe.service;

import com.google.gson.Gson;
import com.metcalfe.model.Contributor;

import java.util.Arrays;
import java.util.List;

/**
 * Created by alex on 12/07/15.
 */
public class ContributorMapper {
    public List<Contributor> mapAll(String json) {
        return Arrays.asList(new Gson().fromJson(json, Contributor[].class));
    }
}
