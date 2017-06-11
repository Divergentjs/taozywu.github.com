---
layout: default
---

<body>
  <div class="index-wrapper">
    <div class="aside">
      <div class="info-card">
        <a href="/" target="_blank"><img src="/images/2793680.jpg" alt="" width="90"/></a>
        <br />
        <br />
        <h1>TaozyWu</h1>
        <br />
        <br />
        <a href="http://weibo.com/taozywu/" target="_blank" title="weibo"><img src="http://www.weibo.com/favicon.ico" alt="" width="25"/></a>
        <a href="http://github.com/taozywu/" target="_blank" title="github"><img src="https://assets-cdn.github.com/favicon.ico" alt="" width="22"/></a>
        <a href="http://www.newsmth.net/nForum/#!fav" target="_blank" title="newsmth"><img src="http://images.newsmth.net/nForum/favicon.ico" alt="" width="22"/></a>
        <a href="/about" target="_blank" title="about"><img src="/images/about.png" alt="" width="22"/></a>
      </div>
      <div id="particles-js"></div>
    </div>

    <div class="index-content">
      <ul class="artical-list">
        {% for post in site.categories.blog %}
        <li>
          <a href="{{ post.url }}" class="title">{{ post.title }}</a>
          <div class="title-desc">{{ post.description }}</div>
        </li>
        {% endfor %}
      </ul>
    </div>
  </div>
</body>
