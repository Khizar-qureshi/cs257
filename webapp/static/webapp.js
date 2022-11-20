/*
Khizar Qureshi and Kendra Winhall
webapp.js
For web application final project due 21 November 2022
*/

window.onload = initialize;
url = null;
language_counter = 0;
world_region_counter = 0;
country_counter = 0;
language_family_counter = 0;
location_counter = 0;
community_size_counter = 0;

/*
initializes the webapp by filling the table with all the language communities.
*/
function initialize() {
    url = getAPIBaseURL() + '/communities/';
    var search_button = document.getElementById('search_button');
    search_button.onclick = onSearchButton;
    var search_bar = document.getElementById('search_bar');
    search_bar.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            onSearchButton();
        }
    });
    dropDown();
    makeTable(url);

    var language_sort_button = document.getElementById('language_sort');
    var world_region_sort_button = document.getElementById("world_region_sort");
    var country_sort_button = document.getElementById('country_sort');
    var language_family_sort_button = document.getElementById('language_family_sort');
    var location_sort_button = document.getElementById('location_sort');
    var community_size_sort_button = document.getElementById('community_size_sort'); 
    language_sort_button.onclick = onLanguageButtonClick;
    world_region_sort_button.onclick = onWorldRegionButtonClick;
    country_sort_button.onclick = onCountryButtonClick;
    language_family_sort_button.onclick = onLanguageFamilyButtonClick;
    location_sort_button.onclick = onLocationButtonClick;
    community_size_sort_button.onclick = onCommunitySizeButtonClick;
}

/*
When user presses search button, function gets the category from drop down and creates a URL with the get parameters & creates the table
*/

function onSearchButton() { 
    var dropdown = document.getElementById('dropdown');
    search_text = document.getElementById('search_bar');
    url = getAPIBaseURL() + '/communities?all_contains=' + search_text.value;

    switch(dropdown.innerHTML) {
        case "Search All Categories":
            url = getAPIBaseURL() + '/communities?all_contains=' + search_text.value;
            break;
        case "Search Languages":
            url = getAPIBaseURL() + '/communities?language_contains=' + search_text.value;
            break;
        case "Search World Regions":
            url = getAPIBaseURL() + '/communities?world_region_contains=' + search_text.value;
            break;
        case "Search Countries":
            url = getAPIBaseURL() + '/communities?country_contains=' + search_text.value;
            break;
        case "Search Language Families":
            url = getAPIBaseURL() + '/communities?language_family_contains=' + search_text.value;
            break;
        case "Search Locations":
            url = getAPIBaseURL() + '/communities?location_contains=' + search_text.value;
            break;
        case "Search Community Sizes":
            url = getAPIBaseURL() + '/communities?community_size_contains=' + search_text.value;
            break;
    }
    makeTable(url);
}
/*
When the user clicks a dropdown category, calls another function to change the label of the button to match the category the user clicked
*/
function dropDown() {
    var language_search = document.getElementById('language_search');
    var world_region_search = document.getElementById('world_region_search');
    var country_search = document.getElementById('country_search');
    var language_family_search = document.getElementById('language_family_search');
    var location_search = document.getElementById('location_search');
    var community_size_search = document.getElementById('community_size_search');
    var all_search = document.getElementById('all_search');

    language_search.onclick = languageSearch;
    world_region_search.onclick = worldRegionSearch;
    country_search.onclick = countrySearch;
    language_family_search.onclick = languageFamilySearch;
    location_search.onclick = locationSearch;
    community_size_search.onclick = communitySizeSearch;
    all_search.onclick = allSearch;  
}

function languageSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Languages"; 

}

function worldRegionSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search World Regions"; 

}

function countrySearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Countries"; 

}

function languageFamilySearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Language Families"; 

}

function locationSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Locations"; 
}


function communitySizeSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search Community Sizes"; 

}

function allSearch(){
    var dropdown = document.getElementById('dropdown');
    dropdown.innerHTML = "Search All Categories"; 

}
/*
When the user clicks the reverse language button on the table, this function reverses the data by language
*/
function onLanguageButtonClick() {
    var oldUrl = url
    if (language_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=language&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=language&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=language&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=language&reverse=false';
        }
    }
    language_counter++;  
    makeTable(newUrl);   
}

/*
When the user clicks the reverse world region button on the table, this function reverses the data by world region
*/
function onWorldRegionButtonClick(){
    var oldUrl = url
    if (world_region_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=world_region&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=world_region&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=world_region&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=world_region&reverse=false';
        }
    }
    world_region_counter++;  
    makeTable(newUrl);   
}

/*
When the user clicks the reverse country button on the table, this function reverses the data by country
*/
function onCountryButtonClick(){
    var oldUrl = url
    if (country_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=country&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=country&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=country&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=country&reverse=false';
        }
    }
    country_counter++;  
    makeTable(newUrl);   
}

/*
When the user clicks the reverse language family button on the table, this function reverses the data by language family
*/
function onLanguageFamilyButtonClick(){
    var oldUrl = url
    if (language_family_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=language_family&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=language_family&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=language_family&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=language_family&reverse=false';
        }
    }
    language_family_counter++;  
    makeTable(newUrl);   
}

/*
When the user clicks the reverse location button on the table, this function reverses the data by location
*/
function onLocationButtonClick(){
    var oldUrl = url
    if (location_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=location&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=location&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=location&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=location&reverse=false';
        }
    }
    location_counter++;  
    makeTable(newUrl);   
}

/*
When the user clicks the reverse community size button on the table, this function reverses the data in alphabetical order
*/
function onCommunitySizeButtonClick(){
    var oldUrl = url
    if (community_size_counter % 2 == 0) {
        if(oldUrl.includes('contains')) {
            var newUrl = oldUrl + '&sort_by=community_size&reverse=true';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=community_size&reverse=true';
        }
    }
    else {
        if(oldUrl.includes('contains')) {
            var newUrl = url + '&sort_by=community_size&reverse=false';
        }
        else {
            var newUrl = oldUrl + '?allcontains=&sort_by=community_size&reverse=false';
        }
    }
    community_size_counter++;  
    makeTable(newUrl);   
}


// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

/*
 * Creates the table based on the url using the JSON dictionaries
 */
function makeTable(url) { 
    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    
    .then((response) => response.json())

    .then(function(communities) {
        let tableBody = ''
        for (let k = 1; k <= communities.length; k++) {
            let community = communities[k-1];
            tableBody += '<tr><th scope="row">' + k + '</th>' + 
                        '<td>' + community['language'] + '</td>' + 
                         '<td>' + community['world_region'] + '</td>' + 
                         '<td>' + community['country'] + '</td>' + 
                         '<td>' + community['language_family'] + '</td>' + 
                         '<td>' + community['location'] + '</td>' +
                         '<td>' + community['community_size'] + '</td>' +
                         '</tr>\n';
        }
       
        let table = document.getElementById('results_table');
        if (table) {
            table.innerHTML = tableBody;
        }
    })

    // Once you have your list of communities dictionaries, use it to build
    // an HTML table displaying the communities .
    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}
