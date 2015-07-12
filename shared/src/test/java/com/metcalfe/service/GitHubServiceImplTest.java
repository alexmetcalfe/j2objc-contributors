package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.List;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

/**
 * Created by alex on 12/07/15.
 */
@RunWith(MockitoJUnitRunner.class)
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

    @Mock
    private HttpClient mockHttpClient;


    @Before
    public void setup() {
        gitHubService = new GitHubServiceImpl(mockHttpClient);
    }

    @Test
    public void shouldReturnListOfContributors() {
        // given
        Mockito.when(mockHttpClient.performGet(Mockito.anyString())).thenReturn(JSON_INPUT);

        // when
        List<Contributor> contributorList = gitHubService.contributors();

        // then
        assertThat(contributorList.isEmpty(), is(false));
    }

}
