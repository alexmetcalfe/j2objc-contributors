package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.json.JSONException;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

/**
 * Created by alex on 12/07/15.
 */
public class GitHubServiceImplTest {

    private GitHubService gitHubService;
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
        String input = "123";
        Mockito.when(mockHttpClient.performGet(Mockito.anyString())).thenReturn(input);
        Mockito.when(mockContributorMapper.mapAll(input)).thenReturn(new ArrayList<Contributor>());

        // when
        List<Contributor> contributorList = gitHubService.contributors();

        // then
        assertNotNull(contributorList);
        assertEquals(2, contributorList.size());
    }

    @Test
    public void shouldReturnNullIfJsonMappingFails() throws JSONException {
        // given
        String input = "123";
        Mockito.when(mockHttpClient.performGet(Mockito.anyString())).thenReturn(input);
        Mockito.when(mockContributorMapper.mapAll(input)).thenThrow(new JSONException("error"));

        // when
        List<Contributor> contributorList = gitHubService.contributors();

        // then
        assertNull(contributorList);
    }

}
