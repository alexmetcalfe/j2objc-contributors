package com.metcalfe.service;

import com.metcalfe.model.Contributor;

import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by alexmetcalfe on 14/12/2015.
 */
public class ContributorMapperTest {

    String JSON_INPUT = "[\n" +
            "  {\n" +
            "    \"login\": \"test1\",\n" +
            "    \"contributions\": 1469\n" +
            "  },\n" +
            "  {\n" +
            "    \"login\": \"test2\",\n" +
            "    \"contributions\": 434\n" +
            "  }]";

    private ContributorMapper mapper;

    @Before
    public void setUp() {
        mapper = new ContributorMapper();
    }

    @Test
    public void ShouldMapJSON() {
        // given


        // when
        List<Contributor> contributorList = mapper.mapAll(JSON_INPUT);

        // then
        assertNotNull(contributorList);
        assertEquals(2, contributorList.size());
    }

}
