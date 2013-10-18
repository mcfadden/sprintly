def product_response
  <<-TEXT
{
    "archived": false,
    "name": "My Web Site",
    "admin": true,
    "created_at": "2012-04-06T21:25:17+00:00",
    "id": 42,
    "email": {
        "tests": "tests-42@items.sprint.ly",
        "tasks": "tasks-42@items.sprint.ly",
        "stories": "stories-42@items.sprint.ly",
        "defects": "defects-42@items.sprint.ly",
        "backlog": "backlog-42@items.sprint.ly"
    }
}
TEXT
  end

def items_response
  <<-TEXT
[
  {
    "status": "backlog",
    "product": {
        "archived": false,
        "id": 42,
        "name": "My Web Site"
    },
    "description": "This is an item description",
    "tags": [],
    "short_url": "http://sprint.ly/i/42/332/",
    "number": 332,
    "last_modified": "2013-10-17T20:29:16+00:00",
    "title": "This is an item",
    "created_at": "2012-06-20T21:15:53+00:00",
    "created_by": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2011-12-20T16:21:54+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-09-20T12:34:43+00:00",
        "id": 772
    },
    "score": "~",
    "assigned_to": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2012-09-04T15:59:29+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-10-10T16:09:05+00:00",
        "id": 772
    },
    "type": "task",
    "email": {
        "files": "files-88788@items.sprint.ly",
        "discussion": "discussion-88788@items.sprint.ly"
    }
  },
  {
    "status": "in-progress",
    "product": {
        "archived": false,
        "id": 42,
        "name": "My Web Site"
    },
    "description": "Implement MVP",
    "tags": [],
    "short_url": "http://sprint.ly/i/42/1567/",
    "who": "new customer",
    "number": 1567,
    "last_modified": "2013-10-17T16:43:32+00:00",
    "why": "I can easily do some stuff",
    "what": "to make a lot of money",
    "title": "As a new customer, I want to make a lot of money so that I can easily do some stuff.",
    "created_at": "2013-08-16T21:47:01+00:00",
    "created_by": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2011-12-20T16:21:54+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-09-20T12:34:43+00:00",
        "id": 772
    },
    "score": "L",
    "assigned_to": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2012-09-04T15:59:29+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-10-10T16:09:05+00:00",
        "id": 772
    },
    "progress": {
        "started_at": "2013-10-17T16:43:32+00:00"
    },
    "type": "story",
    "email": {
        "files": "files-491013@items.sprint.ly",
        "discussion": "discussion-491013@items.sprint.ly"
    }
  },
  {
    "status": "backlog",
    "product": {
        "archived": false,
        "id": 42,
        "name": "My Web Site"
    },
    "description": "",
    "tags": [],
    "short_url": "http://sprint.ly/i/42/1885/",
    "who": "user",
    "number": 1885,
    "last_modified": "2013-10-14T17:12:57+00:00",
    "why": "it looks nice",
    "what": "to have a new manage plan interface design",
    "title": "As a user, I want to have a new manage plan interface design so that it looks nice.",
    "created_at": "2013-10-14T16:51:24+00:00",
    "created_by": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2011-12-16T17:22:42+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-02-20T01:02:52+00:00",
        "id": 772
    },
    "score": "~",
    "assigned_to": {
        "first_name": "Bob",
        "last_name": "Vance",
        "created_at": "2013-07-01T18:13:13+00:00",
        "email": "bob@vance.com",
        "last_login": "2013-09-18T14:32:07+00:00",
        "id": 772
    },
    "type": "story",
    "email": {
        "files": "files-540373@items.sprint.ly",
        "discussion": "discussion-540373@items.sprint.ly"
    }
  }
]
TEXT
end