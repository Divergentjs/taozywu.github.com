---
layout: default
---

<body>
  <div class="index-wrapper">
    <div class="aside">
      <div class="info-card">
        <h1>TaozyWu</h1>
        <a href="http://weibo.com/taozywu/" target="_blank"><img src="http://www.weibo.com/favicon.ico" alt="" width="25"/></a>
        <a href="http://github.com/taozywu/" target="_blank"><img src="https://assets-cdn.github.com/favicon.ico" alt="" width="22"/></a>
        <a href="https://www.v2ex.com/" target="_blank">V2EX</a>
        <a href="http://www.newsmth.net/nForum/#!fav" target="_blank">水木社区</a>
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
