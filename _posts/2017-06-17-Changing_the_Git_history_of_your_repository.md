---
layout:      post
title:       Changing the Git history of your repository using a script
category:    blog
description: Changing the Git history of your repository using a script
---

## Changing the Git history of your repository using a script

<div class="article js-hide-during-search">

        <h2>Changing author info</h2>

        <div id="article-platform-nav" style="display: block;">
  <ul>
    <li class="platform-mac">
      <a href="#platform-mac" data-platform="mac">
        mac
      </a>
    </li>
    <li class="platform-windows selected">
      <a href="#platform-windows" data-platform="windows">
        windows
      </a>
    </li>
    <li class="platform-linux">
      <a href="#platform-linux" data-platform="linux">
        linux
      </a>
    </li>
    <li class="platform-all hidden">
      <a href="#platform-all" data-platform="all">
        all
      </a>
    </li>
  </ul>
</div>


        <div class="article-body content-body wikistyle markdown-format">
          <div class="intro">

          

          </div>

          <div class="intro">

<p>To change the name and/or email address recorded in existing commits, you must rewrite the entire history of your Git repository.</p>

</div>

<div class="alert warning">

<p><strong>Warning</strong>: This action is destructive to your repository's history. If you're collaborating on a repository with others, it's considered bad practice to rewrite published history. You should only do this in an emergency.</p>

</div>

<h3>
<a id="changing-the-git-history-of-your-repository-using-a-script" class="anchor" href="#changing-the-git-history-of-your-repository-using-a-script" aria-hidden="true"><span aria-hidden="true" class="octicon octicon-link"></span></a>Changing the Git history of your repository using a script</h3>

<p>We've created a script that will change any commits that previously had the old email address in its author or committer fields to use the correct name and email address.</p>

<div class="alert tip">

<p><strong>Note</strong>: Running this script rewrites history for all repository collaborators. After completing these steps, any person with forks or clones must fetch the rewritten history and rebase any local changes into the rewritten history.</p>

</div>

<p>Before running this script, you'll need:</p>

<ul>
<li>The old email address that appears in the author/committer fields that you want to change</li>
<li><p>The correct name and email address that you would like such commits to be attributed to</p></li>
</ul>

<ol>
<li><p>Open <span class="platform-mac">Terminal</span><span class="platform-linux">Terminal</span><span class="platform-windows">Git Bash</span>.</p></li>
<li>
<p>Create a fresh, bare clone of your repository:</p>

<pre class="command-line">git clone --bare https://github.com/<em>user</em>/<em>repo</em>.git
cd <em>repo</em>.git
</pre>
</li>
<li>
<p>Copy and paste the script, replacing the following variables based on the information you gathered:</p>

<ul>
<li><code>OLD_EMAIL</code></li>
<li><code>CORRECT_NAME</code></li>
<li>
<code>CORRECT_EMAIL</code><br>
<br>
<script src="https://gist.github.com/octocat/0831f3fbd83ac4d46451.js"></script><link rel="stylesheet" href="https://assets-cdn.github.com/assets/gist-embed-231026f21fb6b1b8ab6563f832aeb234f303cae6e5c38db4b598967cfa8c93ee.css"><div id="gist13447631" class="gist">
    <div class="gist-file">
      <div class="gist-data">
        <div class="js-gist-file-update-container js-task-list-container file-box">
  <div id="file-git-author-rewrite-sh" class="file">
    

  <div itemprop="text" class="blob-wrapper data type-shell">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tbody><tr>
        <td id="file-git-author-rewrite-sh-L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="file-git-author-rewrite-sh-LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"><span class="pl-c">#!</span>/bin/sh</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="file-git-author-rewrite-sh-LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="file-git-author-rewrite-sh-LC3" class="blob-code blob-code-inner js-file-line">git filter-branch --env-filter <span class="pl-s"><span class="pl-pds">'</span></span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="file-git-author-rewrite-sh-LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="file-git-author-rewrite-sh-LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-s">OLD_EMAIL="your-old-email@example.com"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="file-git-author-rewrite-sh-LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-s">CORRECT_NAME="Your Correct Name"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="file-git-author-rewrite-sh-LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-s">CORRECT_EMAIL="your-correct-email@example.com"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="file-git-author-rewrite-sh-LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="file-git-author-rewrite-sh-LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-s">if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="file-git-author-rewrite-sh-LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-s">then</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="file-git-author-rewrite-sh-LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    export GIT_COMMITTER_NAME="$CORRECT_NAME"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="file-git-author-rewrite-sh-LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="file-git-author-rewrite-sh-LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-s">fi</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="file-git-author-rewrite-sh-LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-s">if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="file-git-author-rewrite-sh-LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-s">then</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="file-git-author-rewrite-sh-LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    export GIT_AUTHOR_NAME="$CORRECT_NAME"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="file-git-author-rewrite-sh-LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="file-git-author-rewrite-sh-LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-s">fi</span></td>
      </tr>
      <tr>
        <td id="file-git-author-rewrite-sh-L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="file-git-author-rewrite-sh-LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-pds">'</span></span> --tag-name-filter cat -- --branches --tags</td>
      </tr>
</tbody></table>

  </div>

  </div>
  
</div>

      </div>
      <div class="gist-meta">
        <a href="https://gist.github.com/octocat/0831f3fbd83ac4d46451/raw/c197afe3e9ea2e4218f9fccbc0f36d2b8fd3c1e3/git-author-rewrite.sh" style="float:right">view raw</a>
        <a href="https://gist.github.com/octocat/0831f3fbd83ac4d46451#file-git-author-rewrite-sh">git-author-rewrite.sh</a>
        hosted with ❤ by <a href="https://github.com">GitHub</a>
      </div>
    </div>
</div>

</li>
</ul>
</li>
<li>Press <strong>Enter</strong> to run the script.</li>
<li>Review the new Git history for errors.</li>
<li>
<p>Push the corrected history to GitHub:</p>

<pre class="command-line">git push --force --tags origin 'refs/heads/*'
</pre>
</li>
<li>
<p>Clean up the temporary clone:</p>

<pre class="command-line">cd ..
rm -rf <em>repo</em>.git
</pre>
</li>
</ol>
        </div>

        <div class="support-footer">
          <ul class="article-footer button-nav">
            
              <li><a href="https://github.com/contact" class="minibutton">
                  <span class="octicon octicon-comment-discussion"></span>
                  Contact a human
                </a>
              </li>
            
          </ul>
        </div>
      </div>
