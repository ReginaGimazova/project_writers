<#macro head title extra_styles extra_scripts>
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <#list extra_styles as style>
        <link rel="stylesheet" href="/static/styles/${style}">
    </#list>
    <script src="/tools/jquery/jquery-3.2.1.min.js"></script>
    <#list extra_scripts as script>
        <script src="static/javascript/${script}"></script>
    </#list>
    <#list extras as extra>
    ${extra}
    </#list>
</head>
</#macro>