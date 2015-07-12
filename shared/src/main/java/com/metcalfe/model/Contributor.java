package com.metcalfe.model;

/**
 * Created by alex on 12/07/15.
 */
public class Contributor {

    private final String login;
    private final int contributions;

    public Contributor(String login, int contributions) {
        this.login = login;
        this.contributions = contributions;
    }

    public String getLogin() {
        return login;
    }

    public int getContributions() {
        return contributions;
    }

}
