package com.lishibook.application;

import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;

public class LBApplication extends ResourceConfig {

    /**
     * Register JAX-RS application components.
     */
    public LBApplication () {
    	packages("com.lishibook.resource").register(JacksonFeature.class);
    	packages("org.glassfish.jersey.examples.multipart").register(MultiPartFeature.class);
    }
}