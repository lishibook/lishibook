package com.lishibook.application;

import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.server.ResourceConfig;

public class LBApplication extends ResourceConfig {

    /**
     * Register JAX-RS application components.
     */
    public LBApplication () {
    	packages("com.lishibook.resource").register(JacksonFeature.class);
    }
}