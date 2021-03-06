library(shiny)


shinyUI(pageWithSidebar(


    headerPanel("Basic Statistics Calculator"),


    sidebarPanel(

    p("Data input:"),
    tags$textarea(id="textarea.in", rows=30, cols=10, "44\n32\n37\n44\n40\n44\n45\n36\n37\n42\n38\n47\n26\n41\n27\n39\n47\n41\n36\n44\n39\n49\n40\n25\n33\n39\n36\n45\n32\n51\n47\n39\n43\n38\n42\n35\n29\n33\n40\n37\n38\n34\n36\n43\n38\n39\n26\n30\n41\n35\n30\n39\n46\n39\n43\n46\n33\n48\n44\n45\n42\n45\n46\n53\n47\n47\n51\n33\n40\n43\n48\n37\n31\n40\n40\n49\n43\n49\n46\n38\n40\n51\n40\n44\n45\n53\n46\n42\n44\n46\n29\n38"),
    p('Input values can be separated by', br(),
      'newlines, spaces, commas, or tabs.')
    ),


mainPanel(
    tabsetPanel(

    tabPanel("Main",

        h3("Basic statistics"),
        verbatimTextOutput("textarea.out"),

        br(),

        h3("Histogram"),

        plotOutput("distPlot"),

        h3("Box plot"),

        checkboxInput("beeswarm", label = strong("Plot individual data points."), value = T),

        plotOutput("boxPlot"),

        h3("Test of normality"),
        verbatimTextOutput("testnorm.out"),

        br(),

        h3("Q-Q plot"),

        plotOutput("qqPlot", width="70%"),

        br(),
        br(),

        strong('R session info'),
        verbatimTextOutput("info.out")

        ),

    tabPanel("About",

        strong('Note'),
            p('This web application is developed with',
            a("Shiny.", href="http://shiny.rstudio.com/", target="_blank"),
            ''),

        br(),

        strong('List of Packages Used'), br(),
        code('library(shiny)'),br(),
        code('library(psych)'),br(),
        code('library(beeswarm)'),br(),

        br(),

        strong('Code'),
            p('Source code for this application is based on',
            a('"The handbook of Research in Foreign Language Learning and Teaching" (Takeuchi & Mizumoto, 2012).', href='http://mizumot.com/handbook/', target="_blank")),

            p('The code for this web application is available at',
            a('GitHub.', href='https://github.com/mizumot/bs', target="_blank")),

            p('If you want to run this code on your computer (in a local R session), run the code below:',
            br(),
            code('library(shiny)'),br(),
            code('runGitHub("bs","mizumot")')
            ),

            br(),

        strong('Citation in Publications'),
            p('Mizumoto, A. (2015). Langtest (Version 1.0) [Web application]. Retrieved from http://langtest.jp'),

            br(),

        strong('Article'),
            p('Mizumoto, A., & Plonsky, L. (2015).', a("R as a lingua franca: Advantages of using R for quantitative research in applied linguistics.", href='http://applij.oxfordjournals.org/content/early/2015/06/24/applin.amv025.abstract', target="_blank"), em('Applied Linguistics,'), 'Advance online publication. doi:10.1093/applin/amv025'),

            br(),

        strong('Recommended'),
            p('To learn more about R, I suggest this excellent and free e-book (pdf),',
            a("A Guide to Doing Statistics in Second Language Research Using R,", href="http://cw.routledge.com/textbooks/9780805861853/guide-to-R.asp", target="_blank"),
            'written by Dr. Jenifer Larson-Hall.'),

            p('Also, if you are a cool Mac user and want to use R with GUI,',
            a("MacR", href="http://www.urano-ken.com/blog/2013/02/25/installing-and-using-macr/", target="_blank"),
            'is defenitely the way to go!'),

        br(),

        strong('Author'),
            p(a("Atsushi MIZUMOTO,", href="http://mizumot.com", target="_blank"),' Ph.D.',br(),
            'Associate Professor of Applied Linguistics',br(),
            'Faculty of Foreign Language Studies /',br(),
            'Graduate School of Foreign Language Education and Research,',br(),
            'Kansai University, Osaka, Japan'),

            br(),

        a(img(src="http://i.creativecommons.org/p/mark/1.0/80x15.png"), target="_blank", href="http://creativecommons.org/publicdomain/mark/1.0/")
    )
    )
)
))