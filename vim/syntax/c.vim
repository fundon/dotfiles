
    

  

<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <script>var NREUMQ=[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);(function(){var d=document;var e=d.createElement("script");e.type="text/javascript";e.async=true;e.src="https://d1ros97qkrwjf5.cloudfront.net/9/eum/rum.js	";var s=d.getElementsByTagName("script")[0];s.parentNode.insertBefore(e,s);})()</script>
        <title>syntax/c.vim at master from BonsaiDen/vim - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    <link href="https://d3nwyuy0nl342s.cloudfront.net/1db3f04d3d688538ecff72d82ec51604dcaf0473/stylesheets/bundle_github.css" media="screen" rel="stylesheet" type="text/css" />
    

    <script type="text/javascript">
      if (typeof console == "undefined" || typeof console.log == "undefined")
        console = { log: function() {} }
    </script>
    <script type="text/javascript" charset="utf-8">
      var GitHub = {
        assetHost: 'https://d3nwyuy0nl342s.cloudfront.net'
      }
      var github_user = null
      
    </script>
    <script src="https://d3nwyuy0nl342s.cloudfront.net/1db3f04d3d688538ecff72d82ec51604dcaf0473/javascripts/jquery/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="https://d3nwyuy0nl342s.cloudfront.net/1db3f04d3d688538ecff72d82ec51604dcaf0473/javascripts/bundle_github.js" type="text/javascript"></script>


    
    <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "BonsaiDen/vim"
      })
    </script>

    
  <link rel='canonical' href='/BonsaiDen/vim/blob/c2588baa71115ec16a099a3f83422333ea044961/syntax/c.vim'>

  <link href="https://github.com/BonsaiDen/vim/commits/master.atom" rel="alternate" title="Recent Commits to vim:master" type="application/atom+xml" />

        <meta name="description" content="My .vim stuffs" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "BonsaiDen/vim";
      GitHub.currentRef = 'master';
      GitHub.commitSHA = "c2588baa71115ec16a099a3f83422333ea044961";
      GitHub.currentPath = 'syntax/c.vim';
      GitHub.masterBranch = "master";

      
    </script>
  

        <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_setDomainName', 'none']);
      _gaq.push(['_trackPageview']);
      _gaq.push(['_trackPageLoadTime']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

    
  </head>

  

  <body class="logged_out page-blob  env-production">
    

    

    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com">
            <img alt="github" class="default" src="https://d3nwyuy0nl342s.cloudfront.net/images/modules/header/logov3.png" />
            <!--[if (gt IE 8)|!(IE)]><!-->
            <img alt="github" class="hover" src="https://d3nwyuy0nl342s.cloudfront.net/images/modules/header/logov3-hover.png" />
            <!--<![endif]-->
          </a>
        
        
        <div class="topsearch">
  
    <ul class="nav logged_out">
      <li class="pricing"><a href="/plans">Pricing and Signup</a></li>
      <li class="explore"><a href="/explore">Explore GitHub</a></li>
      <li class="features"><a href="/features">Features</a></li>
      <li class="blog"><a href="/blog">Blog</a></li>
      <li class="login"><a href="/login?return_to=%2FBonsaiDen%2Fvim%2Fblob%2Fmaster%2Fsyntax%2Fc.vim">Login</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public    instapaper_ignore readability-menu">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/BonsaiDen">BonsaiDen</a> / <strong><a href="/BonsaiDen/vim">vim</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="/BonsaiDen/vim/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/BonsaiDen/vim/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '3d19a3cde26dee06d138f603a18c553a398ecfcf'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/BonsaiDen/vim/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '3d19a3cde26dee06d138f603a18c553a398ecfcf'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/BonsaiDen/vim/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '3d19a3cde26dee06d138f603a18c553a398ecfcf'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/BonsaiDen/vim/watchers" title="Watchers" class="tooltipped downwards">2</a></li>
          <li class="forks"><a href="/BonsaiDen/vim/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="/BonsaiDen/vim" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="/BonsaiDen/vim/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/BonsaiDen/vim/network" highlight="repo_network">Network</a></li>
    <li><a href="/BonsaiDen/vim/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    

    
      
      <li><a href="/BonsaiDen/vim/issues" highlight="issues">Issues (0)</a></li>
    

            
    <li><a href="/BonsaiDen/vim/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      
      <a href="/BonsaiDen/vim/branches" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/BonsaiDen/vim/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/BonsaiDen/vim/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
          <p>My .vim stuffs
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>

      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/BonsaiDen/vim/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="3d19a3cde26dee06d138f603a18c553a398ecfcf" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="My .vim stuffs">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>

      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/BonsaiDen/vim/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="3d19a3cde26dee06d138f603a18c553a398ecfcf" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule "></div>
      <div id="url_box" class="url-box">
  

  <ul class="clone-urls">
    
      
      <li id="http_clone_url"><a href="https://github.com/BonsaiDen/vim.git" data-permissions="Read-Only">HTTP</a></li>
      <li id="public_clone_url"><a href="git://github.com/BonsaiDen/vim.git" data-permissions="Read-Only">Git Read-Only</a></li>
    
    
  </ul>
  <input type="text" spellcheck="false" id="url_field" class="url-field" />
        <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://d3nwyuy0nl342s.cloudfront.net/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://d3nwyuy0nl342s.cloudfront.net/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

  <p id="url_description"><strong>Read+Write</strong> access</p>
</div>
    </div>

    <div class="frame frame-center tree-finder" style="display:none">
      <div class="breadcrumb">
        <b><a href="/BonsaiDen/vim">vim</a></b> /
        <input class="tree-finder-input" type="text" name="query" autocomplete="off" spellcheck="false">
      </div>

      
        <div class="octotip">
          <p>
            <a href="/BonsaiDen/vim/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever">Dismiss</a>
            <strong>Octotip:</strong> You've activated the <em>file finder</em> by pressing <span class="kbd">t</span>
            Start typing to filter the file list. Use <span class="kbd badmono">↑</span> and <span class="kbd badmono">↓</span> to navigate,
            <span class="kbd">enter</span> to view files.
          </p>
        </div>
      

      <table class="tree-browser" cellpadding="0" cellspacing="0">
        <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
        <tr class="js-no-results no-results" style="display: none">
          <th colspan="2">No matching files</th>
        </tr>
        <tbody class="js-results-list">
        </tbody>
      </table>
    </div>

    <div id="jump-to-line" style="display:none">
      <h2>Jump to Line</h2>
      <form>
        <input class="textfield" type="text">
        <div class="full-button">
          <button type="submit" class="classy">
            <span>Go</span>
          </button>
        </div>
      </form>
    </div>


        

      </div><!-- /.pagehead -->

      

  







<script type="text/javascript">
  GitHub.downloadRepo = '/BonsaiDen/vim/archives/master'
  GitHub.revType = "master"

  GitHub.repoName = "vim"
  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  
    GitHub.loggedIn = false
  

  
</script>






<div class="flash-messages"></div>


  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/BonsaiDen/vim/commit/c2588baa71115ec16a099a3f83422333ea044961">fix highlighting in script tags</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="https://secure.gravatar.com/avatar/b04d74db65a7a2dc6e554e50dd4708b2?s=140&d=https://d3nwyuy0nl342s.cloudfront.net%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/BonsaiDen">BonsaiDen</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2011-05-18 12:11:20">Wed May 18 12:11:20 -0700 2011</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/BonsaiDen/vim/commit/c2588baa71115ec16a099a3f83422333ea044961" hotkey="c">c2588baa71115ec16a09</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/BonsaiDen/vim/tree/c2588baa71115ec16a099a3f83422333ea044961" hotkey="t">61bb9f51e8dbb197cca0</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/BonsaiDen/vim/tree/bf557bf6fbb6f7134c7e751be51ffce0bbf6a71e" hotkey="p">bf557bf6fbb6f7134c7e</a>
      

    </div>
  </div>

    </div>
  </div>



  <div id="slider">

  

    <div class="breadcrumb" data-path="syntax/c.vim/">
      <b><a href="/BonsaiDen/vim/tree/c2588baa71115ec16a099a3f83422333ea044961">vim</a></b> / <a href="/BonsaiDen/vim/tree/c2588baa71115ec16a099a3f83422333ea044961/syntax">syntax</a> / c.vim       <span style="display:none" id="clippy_4333">syntax/c.vim</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://d3nwyuy0nl342s.cloudfront.net/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_4333&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://d3nwyuy0nl342s.cloudfront.net/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_4333&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="syntax/c.vim/" data-canonical-url="/BonsaiDen/vim/blob/c2588baa71115ec16a099a3f83422333ea044961/syntax/c.vim">
        
          <ul class="big-actions">
            
            <li><a class="file-edit-link minibutton" href="/BonsaiDen/vim/file-edit/__current_ref__/syntax/c.vim"><span>Edit this file</span></a></li>
          </ul>
        

        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://d3nwyuy0nl342s.cloudfront.net/images/icons/txt.png" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>375 lines (350 sloc)</span>
                
                <span>18.995 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/BonsaiDen/vim/raw/master/syntax/c.vim" id="raw-url">raw</a></li>
                
                  <li><a href="/BonsaiDen/vim/blame/master/syntax/c.vim">blame</a></li>
                
                <li><a href="/BonsaiDen/vim/commits/master/syntax/c.vim">history</a></li>
              </ul>
            </div>
            
  <div class="data type-vim">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c">&quot; Vim syntax file</span></div><div class='line' id='LC2'><span class="c">&quot; Language:	C</span></div><div class='line' id='LC3'><span class="c">&quot; Maintainer:	Bram Moolenaar &lt;Bram@vim.org&gt;</span></div><div class='line' id='LC4'><span class="c">&quot; Last Change:	2009 Nov 17</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="c">&quot; Quit when a (custom) syntax file was already loaded</span></div><div class='line' id='LC7'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;b:current_syntax&quot;</span><span class="p">)</span></div><div class='line' id='LC8'>&nbsp;&nbsp;<span class="k">finish</span></div><div class='line' id='LC9'><span class="k">endif</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="c">&quot; A bunch of useful C keywords</span></div><div class='line' id='LC12'><span class="nb">syn</span> keyword	cStatement	<span class="k">goto</span> <span class="k">break</span> <span class="k">return</span> continue asm</div><div class='line' id='LC13'><span class="nb">syn</span> keyword	cLabel		case default</div><div class='line' id='LC14'><span class="nb">syn</span> keyword	cConditional	<span class="k">if</span> <span class="k">else</span> switch</div><div class='line' id='LC15'><span class="nb">syn</span> keyword	cRepeat		<span class="k">while</span> <span class="k">for</span> do</div><div class='line' id='LC16'><br/></div><div class='line' id='LC17'><span class="nb">syn</span> keyword	cTodo		contained TODO FIXME XXX</div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c">&quot; It&#39;s easy to accidentally add a space after a backslash that was intended</span></div><div class='line' id='LC20'><span class="c">&quot; for line continuation.  Some compilers allow it, which makes it</span></div><div class='line' id='LC21'><span class="c">&quot; unpredicatable and should be avoided.</span></div><div class='line' id='LC22'><span class="nb">syn</span> <span class="k">match</span>	cBadContinuation contained <span class="c">&quot;\\\s\+$&quot;</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="c">&quot; cCommentGroup allows adding matches for special things in comments</span></div><div class='line' id='LC25'><span class="nb">syn</span> cluster	cCommentGroup	contains<span class="p">=</span>cTodo<span class="p">,</span>cBadContinuation</div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="c">&quot; String and Character constants</span></div><div class='line' id='LC28'><span class="c">&quot; Highlight special characters (those which have a backslash) differently</span></div><div class='line' id='LC29'><span class="nb">syn</span> <span class="k">match</span>	cSpecial	<span class="nb">display</span> contained <span class="c">&quot;\\\(x\x\+\|\o\{1,3}\|.\|$\)&quot;</span></div><div class='line' id='LC30'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_utf&quot;</span><span class="p">)</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpecial	<span class="nb">display</span> contained <span class="c">&quot;\\\(u\x\{4}\|U\x\{8}\)&quot;</span></div><div class='line' id='LC32'><span class="k">endif</span></div><div class='line' id='LC33'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_no_cformat&quot;</span><span class="p">)</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="nb">syn</span> region	cString		<span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span><span class="p">+</span> <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span> contains<span class="p">=</span>cSpecial<span class="p">,</span>@Spell</div><div class='line' id='LC35'><span class="c">  &quot; cCppString: same as cString, but ends at end of line</span></div><div class='line' id='LC36'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppString	<span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span>\<span class="p">|</span>\\$<span class="p">+</span> excludenl <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contains<span class="p">=</span>cSpecial<span class="p">,</span>@Spell</div><div class='line' id='LC37'><span class="k">else</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span> <span class="c">&quot; ISO C99</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cFormat		<span class="nb">display</span> <span class="s2">&quot;%\(\d\+\$\)\=[-+&#39; #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)&quot;</span> contained</div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cFormat		<span class="nb">display</span> <span class="s2">&quot;%\(\d\+\$\)\=[-+&#39; #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlL]\|ll\)\=\([bdiuoxXDOUfeEgGcCsSpn]\|\[\^\=.[^]]*\]\)&quot;</span> contained</div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC43'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cFormat		<span class="nb">display</span> <span class="s2">&quot;%%&quot;</span> contained</div><div class='line' id='LC44'>&nbsp;&nbsp;<span class="nb">syn</span> region	cString		<span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span><span class="p">+</span> <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span> contains<span class="p">=</span>cSpecial<span class="p">,</span>cFormat<span class="p">,</span>@Spell</div><div class='line' id='LC45'><span class="c">  &quot; cCppString: same as cString, but ends at end of line</span></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppString	<span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span>\<span class="p">|</span>\\$<span class="p">+</span> excludenl <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contains<span class="p">=</span>cSpecial<span class="p">,</span>cFormat<span class="p">,</span>@Spell</div><div class='line' id='LC47'><span class="k">endif</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="nb">syn</span> <span class="k">match</span>	cCharacter	<span class="c">&quot;L\=&#39;[^\\]&#39;&quot;</span></div><div class='line' id='LC50'><span class="nb">syn</span> <span class="k">match</span>	cCharacter	<span class="c">&quot;L&#39;[^&#39;]*&#39;&quot; contains=cSpecial</span></div><div class='line' id='LC51'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpecialError	<span class="c">&quot;L\=&#39;\\[^&#39;\&quot;?\\abefnrtv]&#39;&quot;</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpecialCharacter <span class="c">&quot;L\=&#39;\\[&#39;\&quot;?\\abefnrtv]&#39;&quot;</span></div><div class='line' id='LC54'><span class="k">else</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpecialError	<span class="c">&quot;L\=&#39;\\[^&#39;\&quot;?\\abfnrtv]&#39;&quot;</span></div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpecialCharacter <span class="c">&quot;L\=&#39;\\[&#39;\&quot;?\\abfnrtv]&#39;&quot;</span></div><div class='line' id='LC57'><span class="k">endif</span></div><div class='line' id='LC58'><span class="nb">syn</span> <span class="k">match</span>	cSpecialCharacter <span class="nb">display</span> <span class="c">&quot;L\=&#39;\\\o\{1,3}&#39;&quot;</span></div><div class='line' id='LC59'><span class="nb">syn</span> <span class="k">match</span>	cSpecialCharacter <span class="nb">display</span> <span class="c">&quot;&#39;\\x\x\{1,2}&#39;&quot;</span></div><div class='line' id='LC60'><span class="nb">syn</span> <span class="k">match</span>	cSpecialCharacter <span class="nb">display</span> <span class="c">&quot;L&#39;\\x\x\+&#39;&quot;</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'><span class="c">&quot;when wanted, highlight trailing white space</span></div><div class='line' id='LC63'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_space_errors&quot;</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_trail_space_error&quot;</span><span class="p">)</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpaceError	<span class="nb">display</span> excludenl <span class="c">&quot;\s\+$&quot;</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC67'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_tab_space_error&quot;</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cSpaceError	<span class="nb">display</span> <span class="c">&quot; \+\t&quot;me=e-1</span></div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC70'><span class="k">endif</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="c">&quot; This should be before cErrInParen to avoid problems with #define ({ xxx })</span></div><div class='line' id='LC73'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_curly_error&quot;</span><span class="p">)</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="nb">syntax</span> <span class="k">match</span> cCurlyError <span class="c">&quot;}&quot;</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="nb">syntax</span> region	cBlock		<span class="k">start</span><span class="p">=</span><span class="s2">&quot;{&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;}&quot;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>cCurlyError<span class="p">,</span>@cParenGroup<span class="p">,</span>cErrInParen<span class="p">,</span>cCppParen<span class="p">,</span>cErrInBracket<span class="p">,</span>cCppBracket<span class="p">,</span>cCppString<span class="p">,</span>@Spell <span class="k">fold</span></div><div class='line' id='LC76'><span class="k">else</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="nb">syntax</span> region	cBlock		<span class="k">start</span><span class="p">=</span><span class="s2">&quot;{&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;}&quot;</span> transparent <span class="k">fold</span></div><div class='line' id='LC78'><span class="k">endif</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'><span class="c">&quot;catch errors caused by wrong parenthesis and brackets</span></div><div class='line' id='LC81'><span class="c">&quot; also accept &lt;% for {, %&gt; for }, &lt;: for [ and :&gt; for ] (C99)</span></div><div class='line' id='LC82'><span class="c">&quot; But avoid matching &lt;::.</span></div><div class='line' id='LC83'><span class="nb">syn</span> cluster	cParenGroup	contains<span class="p">=</span>cParenError<span class="p">,</span>cIncluded<span class="p">,</span>cSpecial<span class="p">,</span>cCommentSkip<span class="p">,</span>cCommentString<span class="p">,</span>cComment2String<span class="p">,</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cUserCont<span class="p">,</span>cUserLabel<span class="p">,</span>cBitField<span class="p">,</span>cOctalZero<span class="p">,</span>cCppOut<span class="p">,</span>cCppOut2<span class="p">,</span>cCppSkip<span class="p">,</span>cFormat<span class="p">,</span>cNumber<span class="p">,</span>cFloat<span class="p">,</span>cOctal<span class="p">,</span>cOctalError<span class="p">,</span>cNumbersCom</div><div class='line' id='LC84'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_no_curly_error&quot;</span><span class="p">)</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="nb">syn</span> region	cParen		transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cCppParen<span class="p">,</span>cCppString<span class="p">,</span>@Spell</div><div class='line' id='LC86'><span class="c">  &quot; cCppParen: same as cParen but ends at end-of-line; used in cDefine</span></div><div class='line' id='LC87'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppParen	transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> skip<span class="p">=</span><span class="s1">&#39;\\$&#39;</span> excludenl <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contained contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cParen<span class="p">,</span>cString<span class="p">,</span>@Spell</div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cParenError	<span class="nb">display</span> <span class="c">&quot;)&quot;</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cErrInParen	<span class="nb">display</span> contained <span class="c">&quot;^[{}]\|^&lt;%\|^%&gt;&quot;</span></div><div class='line' id='LC90'><span class="k">elseif</span> exists<span class="p">(</span><span class="s2">&quot;c_no_bracket_error&quot;</span><span class="p">)</span></div><div class='line' id='LC91'>&nbsp;&nbsp;<span class="nb">syn</span> region	cParen		transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cCppParen<span class="p">,</span>cCppString<span class="p">,</span>@Spell</div><div class='line' id='LC92'><span class="c">  &quot; cCppParen: same as cParen but ends at end-of-line; used in cDefine</span></div><div class='line' id='LC93'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppParen	transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> skip<span class="p">=</span><span class="s1">&#39;\\$&#39;</span> excludenl <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contained contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cParen<span class="p">,</span>cString<span class="p">,</span>@Spell</div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cParenError	<span class="nb">display</span> <span class="c">&quot;)&quot;</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cErrInParen	<span class="nb">display</span> contained <span class="c">&quot;[{}]\|&lt;%\|%&gt;&quot;</span></div><div class='line' id='LC96'><span class="k">else</span></div><div class='line' id='LC97'>&nbsp;&nbsp;<span class="nb">syn</span> region	cParen		transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cCppParen<span class="p">,</span>cErrInBracket<span class="p">,</span>cCppBracket<span class="p">,</span>cCppString<span class="p">,</span>@Spell</div><div class='line' id='LC98'><span class="c">  &quot; cCppParen: same as cParen but ends at end-of-line; used in cDefine</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppParen	transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;(&#39;</span> skip<span class="p">=</span><span class="s1">&#39;\\$&#39;</span> excludenl <span class="k">end</span><span class="p">=</span><span class="s1">&#39;)&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contained contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cErrInBracket<span class="p">,</span>cParen<span class="p">,</span>cBracket<span class="p">,</span>cString<span class="p">,</span>@Spell</div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cParenError	<span class="nb">display</span> <span class="c">&quot;[\])]&quot;</span></div><div class='line' id='LC101'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cErrInParen	<span class="nb">display</span> contained <span class="c">&quot;[\]{}]\|&lt;%\|%&gt;&quot;</span></div><div class='line' id='LC102'>&nbsp;&nbsp;<span class="nb">syn</span> region	cBracket	transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;\[\|&lt;::\@!&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;]\|:&gt;&#39;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cErrInParen<span class="p">,</span>cCppParen<span class="p">,</span>cCppBracket<span class="p">,</span>cCppString<span class="p">,</span>@Spell</div><div class='line' id='LC103'><span class="c">  &quot; cCppBracket: same as cParen but ends at end-of-line; used in cDefine</span></div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppBracket	transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;\[\|&lt;::\@!&#39;</span> skip<span class="p">=</span><span class="s1">&#39;\\$&#39;</span> excludenl <span class="k">end</span><span class="p">=</span><span class="s1">&#39;]\|:&gt;&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;$&#39;</span> contained contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cParenGroup<span class="p">,</span>cErrInParen<span class="p">,</span>cParen<span class="p">,</span>cBracket<span class="p">,</span>cString<span class="p">,</span>@Spell</div><div class='line' id='LC105'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cErrInBracket	<span class="nb">display</span> contained <span class="c">&quot;[);{}]\|&lt;%\|%&gt;&quot;</span></div><div class='line' id='LC106'><span class="k">endif</span></div><div class='line' id='LC107'><br/></div><div class='line' id='LC108'><span class="c">&quot;integer number, or floating point number without a dot and with &quot;f&quot;.</span></div><div class='line' id='LC109'><span class="nb">syn</span> case ignore</div><div class='line' id='LC110'><span class="nb">syn</span> <span class="k">match</span>	cNumbers	<span class="nb">display</span> transparent <span class="c">&quot;\&lt;\d\|\.\d&quot; contains=cNumber,cFloat,cOctalError,cOctal</span></div><div class='line' id='LC111'><span class="c">&quot; Same, but without octal error (for comments)</span></div><div class='line' id='LC112'><span class="nb">syn</span> <span class="k">match</span>	cNumbersCom	<span class="nb">display</span> contained transparent <span class="c">&quot;\&lt;\d\|\.\d&quot; contains=cNumber,cFloat,cOctal</span></div><div class='line' id='LC113'><span class="nb">syn</span> <span class="k">match</span>	cNumber		<span class="nb">display</span> contained <span class="c">&quot;\d\+\(u\=l\{0,2}\|ll\=u\)\&gt;&quot;</span></div><div class='line' id='LC114'><span class="c">&quot;hex number</span></div><div class='line' id='LC115'><span class="nb">syn</span> <span class="k">match</span>	cNumber		<span class="nb">display</span> contained <span class="c">&quot;0x\x\+\(u\=l\{0,2}\|ll\=u\)\&gt;&quot;</span></div><div class='line' id='LC116'><span class="c">&quot; Flag the first zero of an octal number as something special</span></div><div class='line' id='LC117'><span class="nb">syn</span> <span class="k">match</span>	cOctal		<span class="nb">display</span> contained <span class="c">&quot;0\o\+\(u\=l\{0,2}\|ll\=u\)\&gt;&quot; contains=cOctalZero</span></div><div class='line' id='LC118'><span class="nb">syn</span> <span class="k">match</span>	cOctalZero	<span class="nb">display</span> contained <span class="c">&quot;\&lt;0&quot;</span></div><div class='line' id='LC119'><span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;\d\+f&quot;</span></div><div class='line' id='LC120'><span class="c">&quot;floating point number, with dot, optional exponent</span></div><div class='line' id='LC121'><span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\=&quot;</span></div><div class='line' id='LC122'><span class="c">&quot;floating point number, starting with a dot, optional exponent</span></div><div class='line' id='LC123'><span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\&gt;&quot;</span></div><div class='line' id='LC124'><span class="c">&quot;floating point number, without dot, with exponent</span></div><div class='line' id='LC125'><span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;\d\+e[-+]\=\d\+[fl]\=\&gt;&quot;</span></div><div class='line' id='LC126'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span></div><div class='line' id='LC127'><span class="c">  &quot;hexadecimal floating point number, optional leading digits, with dot, with exponent</span></div><div class='line' id='LC128'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;0x\x*\.\x\+p[-+]\=\d\+[fl]\=\&gt;&quot;</span></div><div class='line' id='LC129'><span class="c">  &quot;hexadecimal floating point number, with leading digits, optional dot, with exponent</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="nb">syn</span> <span class="k">match</span>	cFloat		<span class="nb">display</span> contained <span class="c">&quot;0x\x\+\.\=p[-+]\=\d\+[fl]\=\&gt;&quot;</span></div><div class='line' id='LC131'><span class="k">endif</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'><span class="c">&quot; flag an octal number with wrong digits</span></div><div class='line' id='LC134'><span class="nb">syn</span> <span class="k">match</span>	cOctalError	<span class="nb">display</span> contained <span class="c">&quot;0\o*[89]\d*&quot;</span></div><div class='line' id='LC135'><span class="nb">syn</span> case <span class="k">match</span></div><div class='line' id='LC136'><br/></div><div class='line' id='LC137'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_comment_strings&quot;</span><span class="p">)</span></div><div class='line' id='LC138'><span class="c">  &quot; A comment can contain cString, cCharacter and cNumber.</span></div><div class='line' id='LC139'><span class="c">  &quot; But a &quot;*/&quot; inside a cString in a cComment DOES end the comment!  So we</span></div><div class='line' id='LC140'><span class="c">  &quot; need to use a special type of cString: cCommentString, which also ends on</span></div><div class='line' id='LC141'><span class="c">  &quot; &quot;*/&quot;, and sees a &quot;*&quot; at the start of the line as comment again.</span></div><div class='line' id='LC142'><span class="c">  &quot; Unfortunately this doesn&#39;t very well work for // type of comments :-(</span></div><div class='line' id='LC143'>&nbsp;&nbsp;<span class="nb">syntax</span> <span class="k">match</span>	cCommentSkip	contained <span class="c">&quot;^\s*\*\($\|\s\+\)&quot;</span></div><div class='line' id='LC144'>&nbsp;&nbsp;<span class="nb">syntax</span> region cCommentString	contained <span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span>\\\@<span class="p">&lt;!</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span><span class="p">+</span> <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span> <span class="k">end</span><span class="p">=+</span>\*/<span class="p">+</span>me<span class="p">=</span>s<span class="m">-1</span> contains<span class="p">=</span>cSpecial<span class="p">,</span>cCommentSkip</div><div class='line' id='LC145'>&nbsp;&nbsp;<span class="nb">syntax</span> region cComment2String	contained <span class="k">start</span><span class="p">=+</span>L\<span class="p">=</span>\\\@<span class="p">&lt;!</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span><span class="p">+</span> <span class="k">end</span><span class="p">=+</span><span class="s2">&quot;+ end=&quot;</span>$&quot; contains<span class="p">=</span>cSpecial</div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="nb">syntax</span> region  cCommentL	<span class="k">start</span><span class="p">=</span><span class="s2">&quot;//&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;$&quot;</span> keepend contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cComment2String<span class="p">,</span>cCharacter<span class="p">,</span>cNumbersCom<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell</div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_no_comment_fold&quot;</span><span class="p">)</span></div><div class='line' id='LC148'><span class="c">    &quot; Use &quot;extend&quot; here to have preprocessor lines not terminate halfway a</span></div><div class='line' id='LC149'><span class="c">    &quot; comment.</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syntax</span> region cComment	matchgroup<span class="p">=</span>cCommentStart <span class="k">start</span><span class="p">=</span><span class="s2">&quot;/\*&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;\*/&quot;</span> contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cCommentString<span class="p">,</span>cCharacter<span class="p">,</span>cNumbersCom<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell extend</div><div class='line' id='LC151'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syntax</span> region cComment	matchgroup<span class="p">=</span>cCommentStart <span class="k">start</span><span class="p">=</span><span class="s2">&quot;/\*&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;\*/&quot;</span> contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cCommentString<span class="p">,</span>cCharacter<span class="p">,</span>cNumbersCom<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell <span class="k">fold</span> extend</div><div class='line' id='LC153'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC154'><span class="k">else</span></div><div class='line' id='LC155'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCommentL	<span class="k">start</span><span class="p">=</span><span class="s2">&quot;//&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;$&quot;</span> keepend contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell</div><div class='line' id='LC156'>&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_no_comment_fold&quot;</span><span class="p">)</span></div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> region	cComment	matchgroup<span class="p">=</span>cCommentStart <span class="k">start</span><span class="p">=</span><span class="s2">&quot;/\*&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;\*/&quot;</span> contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell extend</div><div class='line' id='LC158'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> region	cComment	matchgroup<span class="p">=</span>cCommentStart <span class="k">start</span><span class="p">=</span><span class="s2">&quot;/\*&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;\*/&quot;</span> contains<span class="p">=</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cSpaceError<span class="p">,</span>@Spell <span class="k">fold</span> extend</div><div class='line' id='LC160'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC161'><span class="k">endif</span></div><div class='line' id='LC162'><span class="c">&quot; keep a // comment separately, it terminates a preproc. conditional</span></div><div class='line' id='LC163'><span class="nb">syntax</span> <span class="k">match</span>	cCommentError	<span class="nb">display</span> <span class="c">&quot;\*/&quot;</span></div><div class='line' id='LC164'><span class="nb">syntax</span> <span class="k">match</span>	cCommentStartError <span class="nb">display</span> <span class="c">&quot;/\*&quot;me=e-1 contained</span></div><div class='line' id='LC165'><br/></div><div class='line' id='LC166'><span class="nb">syn</span> keyword	cOperator	sizeof this</div><div class='line' id='LC167'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC168'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cStatement	__asm__</div><div class='line' id='LC169'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cOperator	typeof __real__ __imag__</div><div class='line' id='LC170'><span class="k">endif</span></div><div class='line' id='LC171'><span class="nb">syn</span> keyword	cType		int long short char void</div><div class='line' id='LC172'><span class="nb">syn</span> keyword	cType		signed unsigned float double</div><div class='line' id='LC173'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_ansi&quot;</span><span class="p">)</span> <span class="p">||</span> exists<span class="p">(</span><span class="s2">&quot;c_ansi_typedefs&quot;</span><span class="p">)</span></div><div class='line' id='LC174'>&nbsp;&nbsp;<span class="nb">syn</span> keyword   cType		size_t ssize_t off_t wchar_t ptrdiff_t sig_atomic_t fpos_t</div><div class='line' id='LC175'>&nbsp;&nbsp;<span class="nb">syn</span> keyword   cType		clock_t time_t va_list jmp_buf FILE DIR div_t ldiv_t</div><div class='line' id='LC176'>&nbsp;&nbsp;<span class="nb">syn</span> keyword   cType		mbstate_t wctrans_t wint_t wctype_t</div><div class='line' id='LC177'><span class="k">endif</span></div><div class='line' id='LC178'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span> <span class="c">&quot; ISO C99</span></div><div class='line' id='LC179'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		bool complex</div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		int8_t int16_t int32_t int64_t</div><div class='line' id='LC181'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		uint8_t uint16_t uint32_t uint64_t</div><div class='line' id='LC182'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		int_least8_t int_least16_t int_least32_t int_least64_t</div><div class='line' id='LC183'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		uint_least8_t uint_least16_t uint_least32_t uint_least64_t</div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		int_fast8_t int_fast16_t int_fast32_t int_fast64_t</div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t</div><div class='line' id='LC186'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		intptr_t uintptr_t</div><div class='line' id='LC187'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		intmax_t uintmax_t</div><div class='line' id='LC188'><span class="k">endif</span></div><div class='line' id='LC189'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC190'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cType		__label__ __complex__ __volatile__</div><div class='line' id='LC191'><span class="k">endif</span></div><div class='line' id='LC192'><br/></div><div class='line' id='LC193'><span class="nb">syn</span> keyword	cStructure	struct union enum typedef</div><div class='line' id='LC194'><span class="nb">syn</span> keyword	cStorageClass	static <span class="k">register</span> auto volatile extern const</div><div class='line' id='LC195'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC196'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cStorageClass	inline __attribute__</div><div class='line' id='LC197'><span class="k">endif</span></div><div class='line' id='LC198'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;<span class="nb">syn</span> keyword	cStorageClass	inline restrict</div><div class='line' id='LC200'><span class="k">endif</span></div><div class='line' id='LC201'><br/></div><div class='line' id='LC202'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_ansi&quot;</span><span class="p">)</span> <span class="p">||</span> exists<span class="p">(</span><span class="s2">&quot;c_ansi_constants&quot;</span><span class="p">)</span> <span class="p">||</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC203'>&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_gnu&quot;</span><span class="p">)</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant __GNUC__ __FUNCTION__ __PRETTY_FUNCTION__ __func__</div><div class='line' id='LC205'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC206'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant __LINE__ __FILE__ __DATE__ __TIME__ __STDC__</div><div class='line' id='LC207'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant __STDC_VERSION__</div><div class='line' id='LC208'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant CHAR_BIT MB_LEN_MAX MB_CUR_MAX</div><div class='line' id='LC209'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant UCHAR_MAX UINT_MAX ULONG_MAX USHRT_MAX</div><div class='line' id='LC210'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant CHAR_MIN INT_MIN LONG_MIN SHRT_MIN</div><div class='line' id='LC211'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant CHAR_MAX INT_MAX LONG_MAX SHRT_MAX</div><div class='line' id='LC212'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SCHAR_MIN SINT_MIN SLONG_MIN SSHRT_MIN</div><div class='line' id='LC213'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SCHAR_MAX SINT_MAX SLONG_MAX SSHRT_MAX</div><div class='line' id='LC214'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant __func__</div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LLONG_MIN LLONG_MAX ULLONG_MAX</div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT8_MIN INT16_MIN INT32_MIN INT64_MIN</div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT8_MAX INT16_MAX INT32_MAX INT64_MAX</div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant UINT8_MAX UINT16_MAX UINT32_MAX UINT64_MAX</div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT_LEAST8_MIN INT_LEAST16_MIN INT_LEAST32_MIN INT_LEAST64_MIN</div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT_LEAST8_MAX INT_LEAST16_MAX INT_LEAST32_MAX INT_LEAST64_MAX</div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant UINT_LEAST8_MAX UINT_LEAST16_MAX UINT_LEAST32_MAX UINT_LEAST64_MAX</div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT_FAST8_MIN INT_FAST16_MIN INT_FAST32_MIN INT_FAST64_MIN</div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INT_FAST8_MAX INT_FAST16_MAX INT_FAST32_MAX INT_FAST64_MAX</div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant UINT_FAST8_MAX UINT_FAST16_MAX UINT_FAST32_MAX UINT_FAST64_MAX</div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INTPTR_MIN INTPTR_MAX UINTPTR_MAX</div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant INTMAX_MIN INTMAX_MAX UINTMAX_MAX</div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant PTRDIFF_MIN PTRDIFF_MAX SIG_ATOMIC_MIN SIG_ATOMIC_MAX</div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIZE_MAX WCHAR_MIN WCHAR_MAX WINT_MIN WINT_MAX</div><div class='line' id='LC230'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC231'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant FLT_RADIX FLT_ROUNDS</div><div class='line' id='LC232'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant FLT_DIG FLT_MANT_DIG FLT_EPSILON</div><div class='line' id='LC233'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant DBL_DIG DBL_MANT_DIG DBL_EPSILON</div><div class='line' id='LC234'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LDBL_DIG LDBL_MANT_DIG LDBL_EPSILON</div><div class='line' id='LC235'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant FLT_MIN FLT_MAX FLT_MIN_EXP FLT_MAX_EXP</div><div class='line' id='LC236'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant FLT_MIN_10_EXP FLT_MAX_10_EXP</div><div class='line' id='LC237'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant DBL_MIN DBL_MAX DBL_MIN_EXP DBL_MAX_EXP</div><div class='line' id='LC238'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant DBL_MIN_10_EXP DBL_MAX_10_EXP</div><div class='line' id='LC239'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LDBL_MIN LDBL_MAX LDBL_MIN_EXP LDBL_MAX_EXP</div><div class='line' id='LC240'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LDBL_MIN_10_EXP LDBL_MAX_10_EXP</div><div class='line' id='LC241'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant HUGE_VAL CLOCKS_PER_SEC NULL</div><div class='line' id='LC242'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LC_ALL LC_COLLATE LC_CTYPE LC_MONETARY</div><div class='line' id='LC243'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant LC_NUMERIC LC_TIME</div><div class='line' id='LC244'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIG_DFL SIG_ERR SIG_IGN</div><div class='line' id='LC245'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIGABRT SIGFPE SIGILL SIGHUP SIGINT SIGSEGV SIGTERM</div><div class='line' id='LC246'><span class="c">  &quot; Add POSIX signals as well...</span></div><div class='line' id='LC247'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIGABRT SIGALRM SIGCHLD SIGCONT SIGFPE SIGHUP</div><div class='line' id='LC248'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIGILL SIGINT SIGKILL SIGPIPE SIGQUIT SIGSEGV</div><div class='line' id='LC249'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIGSTOP SIGTERM SIGTRAP SIGTSTP SIGTTIN SIGTTOU</div><div class='line' id='LC250'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SIGUSR1 SIGUSR2</div><div class='line' id='LC251'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant _IOFBF _IOLBF _IONBF BUFSIZ EOF WEOF</div><div class='line' id='LC252'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant FOPEN_MAX FILENAME_MAX L_tmpnam</div><div class='line' id='LC253'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant SEEK_CUR SEEK_END SEEK_SET</div><div class='line' id='LC254'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant TMP_MAX stderr stdin stdout</div><div class='line' id='LC255'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant EXIT_FAILURE EXIT_SUCCESS RAND_MAX</div><div class='line' id='LC256'><span class="c">  &quot; Add POSIX errors as well</span></div><div class='line' id='LC257'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant E2BIG EACCES EAGAIN EBADF EBADMSG EBUSY</div><div class='line' id='LC258'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant ECANCELED ECHILD EDEADLK EDOM EEXIST EFAULT</div><div class='line' id='LC259'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant EFBIG EILSEQ EINPROGRESS EINTR EINVAL EIO EISDIR</div><div class='line' id='LC260'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant EMFILE EMLINK EMSGSIZE ENAMETOOLONG ENFILE ENODEV</div><div class='line' id='LC261'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant ENOENT ENOEXEC ENOLCK ENOMEM ENOSPC ENOSYS</div><div class='line' id='LC262'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant ENOTDIR ENOTEMPTY ENOTSUP ENOTTY ENXIO EPERM</div><div class='line' id='LC263'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant EPIPE ERANGE EROFS ESPIPE ESRCH ETIMEDOUT EXDEV</div><div class='line' id='LC264'><span class="c">  &quot; math.h</span></div><div class='line' id='LC265'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant M_E M_LOG2E M_LOG10E M_LN2 M_LN10 M_PI M_PI_2 M_PI_4</div><div class='line' id='LC266'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant M_1_PI M_2_PI M_2_SQRTPI M_SQRT2 M_SQRT1_2</div><div class='line' id='LC267'><span class="k">endif</span></div><div class='line' id='LC268'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_c99&quot;</span><span class="p">)</span> <span class="c">&quot; ISO C99</span></div><div class='line' id='LC269'>&nbsp;&nbsp;<span class="nb">syn</span> keyword cConstant true false</div><div class='line' id='LC270'><span class="k">endif</span></div><div class='line' id='LC271'><br/></div><div class='line' id='LC272'><span class="c">&quot; Accept %: for # (C99)</span></div><div class='line' id='LC273'><span class="nb">syn</span> region	cPreCondit	<span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*\(if\|ifdef\|ifndef\|elif\)\&gt;&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;$&quot;</span>  contains<span class="p">=</span>cComment<span class="p">,</span>cCommentL<span class="p">,</span>cCppString<span class="p">,</span>cCharacter<span class="p">,</span>cCppParen<span class="p">,</span>cParenError<span class="p">,</span>cNumbers<span class="p">,</span>cCommentError<span class="p">,</span>cSpaceError</div><div class='line' id='LC274'><span class="nb">syn</span> <span class="k">match</span>	cPreCondit	<span class="nb">display</span> <span class="c">&quot;^\s*\(%:\|#\)\s*\(else\|endif\)\&gt;&quot;</span></div><div class='line' id='LC275'><span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_if0&quot;</span><span class="p">)</span></div><div class='line' id='LC276'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_if0_fold&quot;</span><span class="p">)</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> region	cCppOut		<span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*if\s\+0\+\&gt;&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;.\@=\|$&quot;</span> contains<span class="p">=</span>cCppOut2 <span class="k">fold</span></div><div class='line' id='LC278'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syn</span> region	cCppOut		<span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*if\s\+0\+\&gt;&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;.\@=\|$&quot;</span> contains<span class="p">=</span>cCppOut2</div><div class='line' id='LC280'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC281'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppOut2	contained <span class="k">start</span><span class="p">=</span><span class="s2">&quot;0&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*\(endif\&gt;\|else\&gt;\|elif\&gt;\)&quot;</span> contains<span class="p">=</span>cSpaceError<span class="p">,</span>cCppSkip</div><div class='line' id='LC282'>&nbsp;&nbsp;<span class="nb">syn</span> region	cCppSkip	contained <span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*\(if\&gt;\|ifdef\&gt;\|ifndef\&gt;\)&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*endif\&gt;&quot;</span> contains<span class="p">=</span>cSpaceError<span class="p">,</span>cCppSkip</div><div class='line' id='LC283'><span class="k">endif</span></div><div class='line' id='LC284'><span class="nb">syn</span> region	cIncluded	<span class="nb">display</span> contained <span class="k">start</span><span class="p">=+</span><span class="s2">&quot;+ skip=+\\\\\|\\&quot;</span><span class="p">+</span> <span class="k">end</span><span class="p">=+</span>&quot;<span class="p">+</span></div><div class='line' id='LC285'><span class="nb">syn</span> <span class="k">match</span>	cIncluded	<span class="nb">display</span> contained <span class="c">&quot;&lt;[^&gt;]*&gt;&quot;</span></div><div class='line' id='LC286'><span class="nb">syn</span> <span class="k">match</span>	cInclude	<span class="nb">display</span> <span class="c">&quot;^\s*\(%:\|#\)\s*include\&gt;\s*[&quot;&lt;]&quot; contains=cIncluded</span></div><div class='line' id='LC287'><span class="c">&quot;syn match cLineSkip	&quot;\\$&quot;</span></div><div class='line' id='LC288'><span class="nb">syn</span> cluster	cPreProcGroup	contains<span class="p">=</span>cPreCondit<span class="p">,</span>cIncluded<span class="p">,</span>cInclude<span class="p">,</span>cDefine<span class="p">,</span>cErrInParen<span class="p">,</span>cErrInBracket<span class="p">,</span>cUserLabel<span class="p">,</span>cSpecial<span class="p">,</span>cOctalZero<span class="p">,</span>cCppOut<span class="p">,</span>cCppOut2<span class="p">,</span>cCppSkip<span class="p">,</span>cFormat<span class="p">,</span>cNumber<span class="p">,</span>cFloat<span class="p">,</span>cOctal<span class="p">,</span>cOctalError<span class="p">,</span>cNumbersCom<span class="p">,</span>cString<span class="p">,</span>cCommentSkip<span class="p">,</span>cCommentString<span class="p">,</span>cComment2String<span class="p">,</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cParen<span class="p">,</span>cBracket<span class="p">,</span>cMulti</div><div class='line' id='LC289'><span class="nb">syn</span> region	cDefine		<span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*\(define\|undef\)\&gt;&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;$&quot;</span> keepend contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cPreProcGroup<span class="p">,</span>@Spell</div><div class='line' id='LC290'><span class="nb">syn</span> region	cPreProc	<span class="k">start</span><span class="p">=</span><span class="s2">&quot;^\s*\(%:\|#\)\s*\(pragma\&gt;\|line\&gt;\|warning\&gt;\|warn\&gt;\|error\&gt;\)&quot;</span> skip<span class="p">=</span><span class="s2">&quot;\\$&quot;</span> <span class="k">end</span><span class="p">=</span><span class="s2">&quot;$&quot;</span> keepend contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cPreProcGroup<span class="p">,</span>@Spell</div><div class='line' id='LC291'><br/></div><div class='line' id='LC292'><span class="c">&quot; Highlight User Labels</span></div><div class='line' id='LC293'><span class="nb">syn</span> cluster	cMultiGroup	contains<span class="p">=</span>cIncluded<span class="p">,</span>cSpecial<span class="p">,</span>cCommentSkip<span class="p">,</span>cCommentString<span class="p">,</span>cComment2String<span class="p">,</span>@cCommentGroup<span class="p">,</span>cCommentStartError<span class="p">,</span>cUserCont<span class="p">,</span>cUserLabel<span class="p">,</span>cBitField<span class="p">,</span>cOctalZero<span class="p">,</span>cCppOut<span class="p">,</span>cCppOut2<span class="p">,</span>cCppSkip<span class="p">,</span>cFormat<span class="p">,</span>cNumber<span class="p">,</span>cFloat<span class="p">,</span>cOctal<span class="p">,</span>cOctalError<span class="p">,</span>cNumbersCom<span class="p">,</span>cCppParen<span class="p">,</span>cCppBracket<span class="p">,</span>cCppString</div><div class='line' id='LC294'><span class="nb">syn</span> region	cMulti		transparent <span class="k">start</span><span class="p">=</span><span class="s1">&#39;?&#39;</span> skip<span class="p">=</span><span class="s1">&#39;::&#39;</span> <span class="k">end</span><span class="p">=</span><span class="s1">&#39;:&#39;</span> contains<span class="p">=</span>ALLBUT<span class="p">,</span>@cMultiGroup<span class="p">,</span>@Spell</div><div class='line' id='LC295'><span class="c">&quot; Avoid matching foo::bar() in C++ by requiring that the next char is not &#39;:&#39;</span></div><div class='line' id='LC296'><span class="nb">syn</span> cluster	cLabelGroup	contains<span class="p">=</span>cUserLabel</div><div class='line' id='LC297'><span class="nb">syn</span> <span class="k">match</span>	cUserCont	<span class="nb">display</span> <span class="c">&quot;^\s*\I\i*\s*:$&quot; contains=@cLabelGroup</span></div><div class='line' id='LC298'><span class="nb">syn</span> <span class="k">match</span>	cUserCont	<span class="nb">display</span> <span class="c">&quot;;\s*\I\i*\s*:$&quot; contains=@cLabelGroup</span></div><div class='line' id='LC299'><span class="nb">syn</span> <span class="k">match</span>	cUserCont	<span class="nb">display</span> <span class="c">&quot;^\s*\I\i*\s*:[^:]&quot;me=e-1 contains=@cLabelGroup</span></div><div class='line' id='LC300'><span class="nb">syn</span> <span class="k">match</span>	cUserCont	<span class="nb">display</span> <span class="c">&quot;;\s*\I\i*\s*:[^:]&quot;me=e-1 contains=@cLabelGroup</span></div><div class='line' id='LC301'><br/></div><div class='line' id='LC302'><span class="nb">syn</span> <span class="k">match</span>	cUserLabel	<span class="nb">display</span> <span class="c">&quot;\I\i*&quot; contained</span></div><div class='line' id='LC303'><br/></div><div class='line' id='LC304'><span class="c">&quot; Avoid recognizing most bitfields as labels</span></div><div class='line' id='LC305'><span class="nb">syn</span> <span class="k">match</span>	cBitField	<span class="nb">display</span> <span class="c">&quot;^\s*\I\i*\s*:\s*[1-9]&quot;me=e-1 contains=cType</span></div><div class='line' id='LC306'><span class="nb">syn</span> <span class="k">match</span>	cBitField	<span class="nb">display</span> <span class="c">&quot;;\s*\I\i*\s*:\s*[1-9]&quot;me=e-1 contains=cType</span></div><div class='line' id='LC307'><br/></div><div class='line' id='LC308'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_minlines&quot;</span><span class="p">)</span></div><div class='line' id='LC309'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">b</span>:c_minlines <span class="p">=</span> c_minlines</div><div class='line' id='LC310'><span class="k">else</span></div><div class='line' id='LC311'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;c_no_if0&quot;</span><span class="p">)</span></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">b</span>:c_minlines <span class="p">=</span> <span class="m">50</span>	<span class="c">&quot; #if 0 constructs can be long</span></div><div class='line' id='LC313'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">b</span>:c_minlines <span class="p">=</span> <span class="m">15</span>	<span class="c">&quot; mostly for () constructs</span></div><div class='line' id='LC315'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC316'><span class="k">endif</span></div><div class='line' id='LC317'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;c_curly_error&quot;</span><span class="p">)</span></div><div class='line' id='LC318'>&nbsp;&nbsp;<span class="nb">syn</span> sync fromstart</div><div class='line' id='LC319'><span class="k">else</span></div><div class='line' id='LC320'>&nbsp;&nbsp;exec <span class="c">&quot;syn sync ccomment cComment minlines=&quot; . b:c_minlines</span></div><div class='line' id='LC321'><span class="k">endif</span></div><div class='line' id='LC322'><br/></div><div class='line' id='LC323'><span class="c">&quot; Define the default highlighting.</span></div><div class='line' id='LC324'><span class="c">&quot; Only used when an item doesn&#39;t have highlighting yet</span></div><div class='line' id='LC325'><span class="nb">hi</span> <span class="nb">def</span> link cFormat		cSpecial</div><div class='line' id='LC326'><span class="nb">hi</span> <span class="nb">def</span> link cCppString		cString</div><div class='line' id='LC327'><span class="nb">hi</span> <span class="nb">def</span> link cCommentL		cComment</div><div class='line' id='LC328'><span class="nb">hi</span> <span class="nb">def</span> link cCommentStart	cComment</div><div class='line' id='LC329'><span class="nb">hi</span> <span class="nb">def</span> link cLabel		Label</div><div class='line' id='LC330'><span class="nb">hi</span> <span class="nb">def</span> link cUserLabel		Label</div><div class='line' id='LC331'><span class="nb">hi</span> <span class="nb">def</span> link cConditional	Conditional</div><div class='line' id='LC332'><span class="nb">hi</span> <span class="nb">def</span> link cRepeat		Repeat</div><div class='line' id='LC333'><span class="nb">hi</span> <span class="nb">def</span> link cCharacter		Character</div><div class='line' id='LC334'><span class="nb">hi</span> <span class="nb">def</span> link cSpecialCharacter	cSpecial</div><div class='line' id='LC335'><span class="nb">hi</span> <span class="nb">def</span> link cNumber		Number</div><div class='line' id='LC336'><span class="nb">hi</span> <span class="nb">def</span> link cOctal		Number</div><div class='line' id='LC337'><span class="nb">hi</span> <span class="nb">def</span> link cOctalZero		PreProc	 <span class="c">&quot; link this to Error if you want</span></div><div class='line' id='LC338'><span class="nb">hi</span> <span class="nb">def</span> link cFloat		Float</div><div class='line' id='LC339'><span class="nb">hi</span> <span class="nb">def</span> link cOctalError		cError</div><div class='line' id='LC340'><span class="nb">hi</span> <span class="nb">def</span> link cParenError		cError</div><div class='line' id='LC341'><span class="nb">hi</span> <span class="nb">def</span> link cErrInParen		cError</div><div class='line' id='LC342'><span class="nb">hi</span> <span class="nb">def</span> link cErrInBracket	cError</div><div class='line' id='LC343'><span class="nb">hi</span> <span class="nb">def</span> link cCommentError	cError</div><div class='line' id='LC344'><span class="nb">hi</span> <span class="nb">def</span> link cCommentStartError	cError</div><div class='line' id='LC345'><span class="nb">hi</span> <span class="nb">def</span> link cSpaceError		cError</div><div class='line' id='LC346'><span class="nb">hi</span> <span class="nb">def</span> link cSpecialError	cError</div><div class='line' id='LC347'><span class="nb">hi</span> <span class="nb">def</span> link cCurlyError		cError</div><div class='line' id='LC348'><span class="nb">hi</span> <span class="nb">def</span> link cOperator		Operator</div><div class='line' id='LC349'><span class="nb">hi</span> <span class="nb">def</span> link cStructure		Structure</div><div class='line' id='LC350'><span class="nb">hi</span> <span class="nb">def</span> link cStorageClass	StorageClass</div><div class='line' id='LC351'><span class="nb">hi</span> <span class="nb">def</span> link cInclude		Include</div><div class='line' id='LC352'><span class="nb">hi</span> <span class="nb">def</span> link cPreProc		PreProc</div><div class='line' id='LC353'><span class="nb">hi</span> <span class="nb">def</span> link cDefine		PreProc</div><div class='line' id='LC354'><span class="nb">hi</span> <span class="nb">def</span> link cIncluded		cString</div><div class='line' id='LC355'><span class="nb">hi</span> <span class="nb">def</span> link cError		Error</div><div class='line' id='LC356'><span class="nb">hi</span> <span class="nb">def</span> link cStatement		Statement</div><div class='line' id='LC357'><span class="nb">hi</span> <span class="nb">def</span> link cPreCondit		PreCondit</div><div class='line' id='LC358'><span class="nb">hi</span> <span class="nb">def</span> link cType		Type</div><div class='line' id='LC359'><span class="nb">hi</span> <span class="nb">def</span> link cConstant		Constant</div><div class='line' id='LC360'><span class="nb">hi</span> <span class="nb">def</span> link cCommentString	cString</div><div class='line' id='LC361'><span class="nb">hi</span> <span class="nb">def</span> link cComment2String	cString</div><div class='line' id='LC362'><span class="nb">hi</span> <span class="nb">def</span> link cCommentSkip	cComment</div><div class='line' id='LC363'><span class="nb">hi</span> <span class="nb">def</span> link cString		String</div><div class='line' id='LC364'><span class="nb">hi</span> <span class="nb">def</span> link cComment		Comment</div><div class='line' id='LC365'><span class="nb">hi</span> <span class="nb">def</span> link cSpecial		SpecialChar</div><div class='line' id='LC366'><span class="nb">hi</span> <span class="nb">def</span> link cTodo		Todo</div><div class='line' id='LC367'><span class="nb">hi</span> <span class="nb">def</span> link cBadContinuation	Error</div><div class='line' id='LC368'><span class="nb">hi</span> <span class="nb">def</span> link cCppSkip		cCppOut</div><div class='line' id='LC369'><span class="nb">hi</span> <span class="nb">def</span> link cCppOut2		cCppOut</div><div class='line' id='LC370'><span class="nb">hi</span> <span class="nb">def</span> link cCppOut		Comment</div><div class='line' id='LC371'><br/></div><div class='line' id='LC372'><span class="k">let</span> <span class="k">b</span>:current_syntax <span class="p">=</span> <span class="c">&quot;c&quot;</span></div><div class='line' id='LC373'><br/></div><div class='line' id='LC374'><span class="c">&quot; vim: ts=8</span></div><div class='line' id='LC375'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


          </div>
        </div>
      </div>
    </div>
  

  </div>


<div class="frame frame-loading" style="display:none;">
  <img src="https://d3nwyuy0nl342s.cloudfront.net/images/modules/ajax/big_spinner_336699.gif" height="32" width="32">
</div>

    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" height="36" src="https://d3nwyuy0nl342s.cloudfront.net/images/modules/footer/rackspace_logo.png?v2" width="38" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
          <li><a href="https://github.com/contact">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://developer.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2011 <span id="_rrt" title="0.04211s from fe6.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    <script>window._auth_token = "3d19a3cde26dee06d138f603a18c553a398ecfcf"</script>
    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selected down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selected up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle select target</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selected as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selected as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selected</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selected from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:
> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    
    <script type='text/javascript'></script>
    
    <script type="text/javascript" charset="utf-8">NREUMQ.push(["nrf2","beacon-1.newrelic.com","2f94e4d8c2",64799,"dw1bEBZcX1RWRho0B1cJGiMNR3tNUQ4PNANEDWUBFl5aS0BdWggV",0.0,77])</script>
  </body>
</html>

