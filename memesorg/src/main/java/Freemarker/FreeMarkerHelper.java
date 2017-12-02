package Freemarker;

import freemarker.cache.ClassTemplateLoader;
import freemarker.cache.FileTemplateLoader;
import freemarker.cache.StringTemplateLoader;
import freemarker.cache.TemplateLoader;
import freemarker.ext.beans.BeansWrapper;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;

public class FreeMarkerHelper {
    public static final String TEMPLATE = "template";

    protected final Configuration freemarkerConfiguration;

    protected final TemplateLoader templateLoader;

    public static FreeMarkerHelper newDefaultHelper() {
        ClassTemplateLoader templateLoader = new ClassTemplateLoader( FreeMarkerHelper.class, "..resources/templates" );
        FreeMarkerHelper result = new FreeMarkerHelper( templateLoader );
        return result;
    }

    public static FreeMarkerHelper newHelperFromContent( String stringTemplate ) {
        StringTemplateLoader templateLoader = new StringTemplateLoader();
        templateLoader.putTemplate( TEMPLATE, stringTemplate );
        FreeMarkerHelper result = new FreeMarkerHelper( templateLoader );
        return result;
    }

    protected FreeMarkerHelper( TemplateLoader templateLoader ) {
        this.templateLoader = templateLoader;
        freemarkerConfiguration = new Configuration();
        freemarkerConfiguration.setTemplateLoader( templateLoader );
        BeansWrapper objectWrapper = new DefaultObjectWrapper();
        freemarkerConfiguration.setObjectWrapper( objectWrapper );
    }

    public Template getTemplate(String templateName )
            throws IOException
    {

        File file = new File( templateName );
        if ( file.exists() ) {
            freemarkerConfiguration.setTemplateLoader( new FileTemplateLoader( file.getParentFile() ) );
            templateName = file.getName();
        }
        else {
            freemarkerConfiguration.setTemplateLoader( templateLoader );
        }

        Template template = freemarkerConfiguration.getTemplate( templateName );

        if ( template == null )
        {
            throw new IOException( "Could not find template " + templateName );
        }
        return template;
    }

    public String renderTemplate( String templateName, Map<String, Object> parameters )
            throws IOException
    {

        Template template = getTemplate( templateName );
        return renderTemplate( template, parameters );
    }

    public String renderTemplate( Template template, Map<String, Object> parameters )
            throws IOException
    {

        StringWriter out = new StringWriter();
        try
        {
            template.process( parameters, out );
        }
        catch ( TemplateException e )
        {
            throw new IOException( "Could not render template " +
                    template.getName() + " for reason " + e.getMessage() );
        }
        return out.toString();
    }
}

/*
// Create your Configuration instance, and specify if up to what FreeMarker
// version (here 2.3.27) do you want to apply the fixes that are not 100%
// backward-compatible. See the Configuration JavaDoc for details.
Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);

// Specify the source where the template files come from. Here I set a
// plain directory for it, but non-file-system sources are possible too:
cfg.setDirectoryForTemplateLoading(new File("/where/you/store/templates"));

// Set the preferred charset template files are stored in. UTF-8 is
// a good choice in most applications:
cfg.setDefaultEncoding("UTF-8");

// Sets how errors will appear.
// During web page *development* TemplateExceptionHandler.HTML_DEBUG_HANDLER is better.
cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

// Don't log exceptions inside FreeMarker that it will thrown at you anyway:
cfg.setLogTemplateExceptions(false);

// Wrap unchecked exceptions thrown during template processing into TemplateException-s.
cfg.setWrapUncheckedExceptions(true);
 */