package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by alex on 12/07/15.
 */
public class ContributorMapper {

    // TODO use GSON
    public Contributor map(JSONObject jsonObject) throws JSONException {
        String login = jsonObject.getString("login");
        int contributions = jsonObject.getInt("contributions");
        return new Contributor(login, contributions);
    }

    public List<Contributor> mapAll(String json) throws JSONException {
        List<Contributor> contributors = new ArrayList<Contributor>();
        JSONArray jsonArray = new JSONArray(json);
        for (int i = 0; i < jsonArray.length(); i++) {
            contributors.add(map(jsonArray.getJSONObject(i)));
        }
        return contributors;
    }
}
