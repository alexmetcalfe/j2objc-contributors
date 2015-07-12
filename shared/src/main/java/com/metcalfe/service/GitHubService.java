package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import java.util.List;

/**
 * Created by alex on 12/07/15.
 */
public interface GitHubService {

    List<Contributor> contributors();

}
