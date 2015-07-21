package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.json.JSONException;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

/**
 * Created by alex on 12/07/15.
 */
public class GitHubServiceImplTest {

    private GitHubService gitHubService;

    String JSON_INPUT = "[\n" +
            "  {\n" +
            "    \"login\": \"test1\",\n" +
            "    \"contributions\": 1469\n" +
            "  },\n" +
            "  {\n" +
            "    \"login\": \"test2\",\n" +
            "    \"contributions\": 434\n" +
            "  }]";

    private HttpClient mockHttpClient;
    private ContributorMapper mockContributorMapper;


    @Before
    public void setup() {
        mockHttpClient = Mockito.mock(HttpClient.class);
        mockContributorMapper = Mockito.mock(ContributorMapper.class);
        gitHubService = new GitHubServiceImpl(mockHttpClient, mockContributorMapper);
    }

    @Test
    public void shouldReturnListOfContributors() throws JSONException {
        // given
        Mockito.when(mockHttpClient.performGet(Mockito.anyString())).thenReturn(JSON_INPUT);
        Mockito.when(mockContributorMapper.mapAll(JSON_INPUT)).thenReturn(new ArrayList<Contributor>());

        // when
        List<Contributor> contributorList = gitHubService.contributors();

        // then
        assertNotNull(contributorList);
    }

    @Test
    public void shouldReturnNullIfJsonMappingFails() throws JSONException {
        // given
        Mockito.when(mockHttpClient.performGet(Mockito.anyString())).thenReturn(JSON_INPUT);
        Mockito.when(mockContributorMapper.mapAll(JSON_INPUT)).thenThrow(new JSONException("error"));

        // when
        List<Contributor> contributorList = gitHubService.contributors();

        // then
        assertNull(contributorList);
    }

}
