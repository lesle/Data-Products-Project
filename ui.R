library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
      
      # Application title
      titlePanel("Exploring Canadian Permanent Residents by Country of Citizenship, 1980-2014"),
      
      # Sidebar with a slider input for the number of bins
      sidebarLayout(
            position = "left",
            sidebarPanel(
                  ## Buttons and junk here
                  ## Year choice            
                  numericInput('year', 
                               label = h3("Select Year"), 
                               value = 2014,
                               min = 1980,
                               max = 2014 ),
                  
                  ## Country choice
                  selectInput('country', label = h3("Country of Citizenship"), 
                              choices = list( "Philippines" = "Philippines" , "India" = "India" , 
                                             " hina" = "People.s.Republic.of.China" , 
                                              "Iran" = "Iran" , "Pakistan" = "Pakistan" , 
                                              "USA" = "United.States.of.America" , 
                                              "United Kingdom and Colonies" = "United.Kingdom.and.Colonies" , "France" = "France" ,
                                              "Mexico" = "Mexico" , "Republic of Korea" = "Republic.of.Korea" , "Nigeria" = "Nigeria" , 
                                              "Iraq" = "Iraq" , "Algeria" = "Algeria" , "Haiti" = "Haiti" , "Egypt" = "Egypt" , "Jamaica" = "Jamaica" ,
                                              "Colombia" = "Colombia" , "Sri Lanka" = "Sri.Lanka" , "Ukraine" = "Ukraine" , 
                                              "Vietnam" = "Socialist.Republic.of.Vietnam" , "Morocco" = "Morocco" , 
                                              "Bangladesh" = "Bangladesh" , "Lebanon" = "Lebanon" , 
                                              "Cameroon" = "Federal.Republic.of.Cameroon" , "Syria" = "Syria" , 
                                              "Eritrea" = "Eritrea" , "Ireland" = "Republic.of.Ireland" , "Brazil" = "Brazil" , 
                                              "Israel" = "Israel" , "Russia" = "Russia" , 
                                              "Congo" = "Democratic.Republic.of.Congo" ,
                                              "Romania" = "Romania" , "Republic of Ivory Coast" = "Republic.of.Ivory.Coast" ,
                                              "Somalia" = "Democratic.Republic.of.Somalia" , 
                                              "Afghanistan" = "Afghanistan" , "Venezuela" = "Venezuela" , "Tunisia" = "Tunisia" , 
                                              "Ethiopia" = "Ethiopia" , "Australia" = "Australia" , 
                                              "West Germany" = "Federal.Republic.of.Germany" , 
                                              "Nepal" = "Nepal" , "Jordan" = "Jordan" , "Japan" = "Japan" , "Cuba" = "Cuba" , 
                                              "South Africa" = "Republic.of.South.Africa" , "Moldova" = "Moldova" , 
                                              "Stateless" = "Stateless" , "Guyana" = "Guyana" , "Poland" = "Poland" , "Senegal" = "Senegal" , 
                                              "Turkey" = "Turkey" , "Peru" = "Peru" , "El Salvador" = "El.Salvador" , "Taiwan" = "Taiwan" , 
                                              "Italy" = "Italy" , "Portugal" = "Portugal" , 
                                              "St. Vincent and the Grenadines" = "St..Vincent.and.the.Grenadines" , 
                                              "Thailand" = "Thailand" , "Hong Kong" = "Hong.Kong" , "Hungary" = "Hungary" , 
                                              "Albania" = "Albania" , "Ghana" = "Ghana" , "Burundi" = "Burundi" , 
                                              "St. Lucia" = "St..Lucia" , "Spain" = "Spain" , 
                                                "Sudan" = "Democratic.Republic.of.Sudan" , "Kenya" = "Kenya" , "Bulgaria" = "Bulgaria" , 
                                                "Dominican Republic" = "Dominican.Republic" , "Palestinian Authority (Gaza/West Bank)" = "Palestinian.Authority..Gaza.West.Bank." , 
                                                "Myanmar (Burma)" = "Myanmar..Burma." , "Republic of Trinidad & Tobago" = "Republic.of.Trinidad...Tobago" , 
                                                "The Netherlands" = "The.Netherlands" , "Mauritius" = "Mauritius" , "Indonesia" = "Republic.of.Indonesia" , 
                                                "Honduras" = "Honduras" ,"New Zealand" = "New.Zealand" , "Greece" = "Greece" , "Republic of Guinea" = "Republic.of.Guinea" ,
                                                "Belgium" = "Belgium" , "Bhutan" = "Bhutan" , "Burkina Faso" = "Burkina.Faso" , "Malaysia" = "Malaysia" , "Rwanda" = "Rwanda" , 
                                                "Ecuador" = "Ecuador" , "Zimbabwe" = "Zimbabwe" , "Serbia" = "Republic.of.Serbia" , "Guatemala" = "Guatemala" , "Chile" = "Chile" , 
                                                "Libya" = "Libya" , "Kazakhstan" = "Kazakhstan" , "Croatia" = "Croatia" , "Fiji" = "Fiji" , "Republic of Togo" = "Republic.of.Togo" , 
                                                "Peoples Republic of Benin" = "Peoples.Republic.of.Benin" , "Cambodia" = "Cambodia" , "Saudi Arabia" = "Saudi.Arabia" ,
                                                "Czech Republic" = "Czech.Republic" , "Argentina" = "Argentina" , "Armenia" = "Armenia" , "Switzerland" = "Switzerland" , 
                                                "Mali" = "Republic.of.Mali" , "Singapore" = "Singapore" , "Belarus" = "Belarus" , "Uganda" = "Uganda" , 
                                                "Kosovo" = "Republic.of.Kosovo" , "Costa Rica" = "Costa.Rica" , "Uzbekistan" = "Uzbekistan" , "Latvia" = "Latvia" , 
                                                "Slovak Republic" = "Slovak.Republic" , "Sweden" = "Sweden" , "Lithuania" = "Lithuania" , "Yemen" = "Republic.of.Yemen" , 
                                                "Bosnia-Herzegovina" = "Bosnia.Herzegovina" , "Grenada" = "Grenada" , "Barbados" = "Barbados" , 
                                                "Tanzania" = "United.Republic.of.Tanzania" , "Central Africa Republic" = "Central.Africa.Republic" ,
                                                "Kyrgyzstan" = "Kyrgyzstan" , "Namibia" = "Namibia" , "Nicaragua" = "Nicaragua" , "Macedonia" = "Macedonia" , "Madagascar" = "Madagascar" ,
                                                "Botswana" = "Republic.of.Botswana" , "Georgia" = "Georgia" , "Djibouti" = "Republic.of.Djibouti" , 
                                                "Austria" = "Austria" , "Bolivia" = "Bolivia" , "Mongolia" = "People.s.Republic.of.Mongolia" , 
                                                "Congo" = "People.s.Republic.of.the.Congo" , "Mauritania" = "Mauritania" , 
                                                "Chad" = "Republic.of.Chad" , "Denmark" = "Denmark" , "Finland" = "Finland" , "Gabon" = "Gabon.Republic" , 
                                                "Niger" = "Republic.of.the.Niger" , "Azerbaijan" = "Azerbaijan" , "The Bahama Islands" = "The.Bahama.Islands" ,
                                                "Liberia" = "Liberia" , "Sierra Leone" = "Sierra.Leone" , "Panama" = "Republic.of.Panama" , "Belize" = "Belize" , 
                                                "Antigua and Barbuda" = "Antigua.and.Barbuda" , "Kuwait" = "Kuwait" , "Norway" = "Norway" , "Zambia" = "Zambia" , "Uruguay" = "Uruguay" ,
                                                "United Arab Emirates" = "United.Arab.Emirates" , "Iceland" = "Iceland" , "Paraguay" = "Paraguay" , "Swaziland" = "Swaziland" ,
                                                "Macao" = "Macao" , "Gambia" = "Gambia" , "Dominica" = "Dominica" , "Estonia" = "Estonia" , "Slovenia" = "Slovenia" , "Cyprus" = "Cyprus" , 
                                                "Laos" = "Laos" , "Bahrain" = "Bahrain" , "St. Kitts-Nevis" = "St..Kitts.Nevis" , "Tajikistan" = "Tajikistan" , "Angola" = "Angola" , 
                                                "Malawi" = "Malawi" , "Serbia and Montenegro" = "Serbia.and.Montenegro" , 
                                                "North Korea" = "People.s.Democratic.Republic.of.Korea" , "Yugoslavia" = "Yugoslavia" ,
                                                "Canada" = "Canada" , "Malta" = "Malta" , "Qatar" = "Qatar" , "Comoros" = "Comoros" , "Luxembourg" = "Luxembourg" , "Oman" = "Oman" , 
                                                 "Montenegro" = "Republic.of.Montenegro" , "Surinam" = "Surinam" , "Turkmenistan" = "Turkmenistan" , 
                                                "Guinea-Bissau" = "Guinea.Bissau" , "Brunei" = "Brunei" , "Mozambique" = "Mozambique" , "Equatorial Guinea" = "Equatorial.Guinea" ,
                                                "Lesotho" = "Lesotho" , "Seychelles" = "Seychelles" , "Tonga" = "Tonga" , "Vanuatu" = "Vanuatu" , "East Timor" = "East.Timor" , 
                                                "Nauru" = "Nauru" , "New Caledonia" = "New.Caledonia" , "Western Samoa" = "Western.Samoa" , "Sao Tome E Principe" = "Sao.Tome.E.Principe" ,
                                                "The Solomons" = "The.Solomons" , "Africa NES" = "Africa.NES" , "Andorra" = "Andorra" , "Asia NES" = "Asia.NES" ,
                                                "Cape Verde Islands" = "Cape.Verde.Islands" , "Central America NES" = "Central.America.NES" , "Czechoslovakia" = "Czechoslovakia" , 
                                                "Europe NES" = "Europe.NES" , "East Germany" = 'Democratic.Republic.of.Germany' , "Kiribati" = "Kiribati" , 
                                                "Liechtenstein" = "Liechtenstein" , "Maldives" = 'Republic.of.Maldives' , 
                                                "The Marshall Islands" = "Republic.of.The.Marshall.Islands" , 
                                                "Federated States of Micronesia" = "Federated.States.of.Micronesia" , "Monaco" = "Monaco" , "Nevis" = "Nevis" , 
                                                "Commonwealth of the Northern Mariana Islands" = "Commonwealth.of.the.Northern.Mariana.Islands" , 
                                                "Ocean NES" = "Ocean.NES" , "Republic of Palau" = "Republic.of.Palau" , "Panama Canal Zone" = "Panama.Canal.Zone" , 
                                                "Papua New Guinea" = "Papua.New.Guinea" , "Pitcairn Island" = "Pitcairn.Island" , "American Samoa" = "American.Samoa" , 
                                                "San Marino" = "San.Marino" , "Soloman Islands" = "Soloman.Islands" , "South America NES" = "South.America.NES" , "Tuvalu" = "Tuvalu" , 
                                                "Union of Soviet Socialist Republics" = "Union.of.Soviet.Socialist.Republics" , "West Indies NES" = "West.Indies.NES" ,
                                                "Western Sahara" = "Western.Sahara" , "Yemen" = "People.s.Democratic.Republic.of.Yemen" , 
                                                "Unknown" = "Unknown" , "Total" = "Total" ),
                              
                              selected = "Total",) ,
                  
                  ## Submit Button
                  submitButton( "Submit" ),
            
                  ## Information at bottom of panel
                  br(),
                  p( "Data from 2014 are preliminary entries and subject to change."),
                  p( "Source: Citizenship & Immigration Canada, RDM, March 31, 2015" ),
                  p( "Contains information licensed under the Open Government Licence - Canada." )
                         
                         ),
            
            mainPanel(
                  plotOutput("plot"),
                  h4( "For the year:" ),
                  verbatimTextOutput( "Yr" ),
                  h4( "The number of permanent residents from the selected country was:" ),
                  verbatimTextOutput( "YrAmnt" )
                  )
      )
))