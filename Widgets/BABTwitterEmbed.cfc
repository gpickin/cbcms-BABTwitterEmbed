/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* A slideshow that shows all the images in a media manager folder
*/
component extends="contentbox.models.ui.BaseWidget" singleton{

	function init(){
		// Widget Properties
		setName( "BAB Twitter Embed" );
		setVersion( "1.0" );
		setDescription( "Twitter Embed Widget with Customizable Options" );
		setAuthor( "Gavin Pickin" );
		setAuthorURL( "http://www.blackandbluewebapps.com" );
		setIcon( "twitter" );
		setCategory( "Social Media" );
		return this;
	}

	/**
	* A slideshow that shows all the images in a media manager folder
	* @twitterURL.label Twitter URL
	* @twitterURL.hint The twitterURL you would like displayed. You could display a collection, a tweet, profile, list, likes timeline, handle or a hashtag
	* @width.hint The width of the embedded content
	* @height.hint The height of the embedded content
	* @linkColor.hint The color for the links in the embedded content. Must be #fff or #ffffff format.
	* @themePalette.hint The sort order of the files listed (light/dark)
	* @themePalette.options light,dark
	*/
	any function renderIt( string twitterURL, numeric width=300, numeric height=600, string linkColor, string themePalette="light" ){
		var event 		= getRequestContext();
		var cbSettings 	= event.getValue(name="cbSettings",private=true);
		
		saveContent variable="generatedHTML"{
			writeOutput('<a class="twitter-timeline" data-width="#arguments.width#" data-height="#arguments.height#" data-theme="#themePalette#" data-link-color="#arguments.linkColor#" href="#arguments.twitterURL#">Twitter Feed for #arguments.twitterURL#</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>');
		}

		return generatedHTML;
	}
	
}
