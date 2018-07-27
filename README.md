# ruby_qiita_api
API使って色々やろう


## いいね

sample : https://qiita.com/api/v2/items/a372800c262f56fe688a/likes

```
GET /api/v2/items/:item_id/likes HTTP/1.1
```

```
HTTP/1.1 200
Content-Type: application/json

[
  {
    "created_at": "2000-01-01T00:00:00+00:00",
    "user": {
      "description": "Hello, world.",
      "facebook_id": "yaotti",
      "followees_count": 100,
      "followers_count": 200,
      "github_login_name": "yaotti",
      "id": "yaotti",
      "items_count": 300,
      "linkedin_id": "yaotti",
      "location": "Tokyo, Japan",
      "name": "Hiroshige Umino",
      "organization": "Increments Inc",
      "permanent_id": 1,
      "profile_image_url": "https://si0.twimg.com/profile_images/2309761038/1ijg13pfs0dg84sk2y0h_normal.jpeg",
      "twitter_screen_name": "yaotti",
      "website_url": "http://yaotti.hatenablog.com"
    }
  }
]
```
