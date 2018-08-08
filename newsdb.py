# "Database code" for the DB news.

import psycopg2


def get_posts():
  """Return all posts from the 'database', most recent first."""
  conn = psycopg2.connect("dbname=news")
  cur = conn.cursor()
  cur.execute("SELECT content, time  FROM posts ORDER BY time DESC")
  results = cur.fetchall()
  conn.close()
  return results

def add_post(content):
  """Add a post to the 'database' with the current timestamp."""
  conn = psycopg2.connect("dbname=news")
  cur = conn.cursor()
  cur.execute("INSERT INTO posts (content) VALUES (%s)", (content,))
  conn.commit()
  conn.close()


