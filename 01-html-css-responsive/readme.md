# Day 1: HTML, CSS, and Responsive Design

- Intro to HTML & CSS, and Tables
- Intro to Responsive Design w/ Tables

## HTML Review

- Differentiate between semantics and style, and explain how that relates to HTML and CSS.
- Identify best practices in HTML.
- List commonly-used HTML elements.

## Anatomy of HTML

This is "on paper" so you can refer back to it if need be. Usually, the only thing people have trouble remembering is *attributes*.

```html
<div class="bio">
  <p style="color:red;">My name is Yon Yonson. I come from Wisconsin.</p>
  <img src="me.jpg" alt="Hello" />
</div>
```
- `<div class="bio">My name...</div>`: Element
- `<div>`, `</div>`: Tags
- `<div>`: Open-tag
- `</div>`: Close-tag
- `<img />`: Self-closing tag
- `class=""`: Attribute
- `style="color:red;"`: Inline styling. (**Bad**. See below.)
- `My name is Yon Yonson...`: Content

## Semantics

HTML is all about grouping bits of text by their semantic value, which we define as "the function of words beyond their dictionary definition." For instance: a paragraph in a newspaper has a different semantic value from a headline. A list of bullet points has a different semantic value than the disclaimer at the bottom of a page.

Every HTML element meant to contain text tells you a bit about the function of the words inside that element.

## HTML Suggestions

1. Your HTML [**must always validate**](https://validator.w3.org/#validate_by_input).
  - That is: It should follow the standards established by the W3, or the World Wide Web Consortium.
  - Simply copy and paste your page's *complete* HTML into that form and it'll list all the errors for you.
    - **Note:** Fixing one error may actually fix multiple!
- The **bare minimum** HTML you need on any webpage is:
  ```html
  <!DOCTYPE html>
  <html>
    <head>
      <title>My Page</title>
    </head>
    <body>

    </body>
  </html>
  ```
- Elements have to nest.
  ```html
  Wrong: <tagOne><tagTwo></tagOne></tagTwo>

  Right: <tagOne><tagTwo></tagTwo></tagOne>
  ```
- Every open tag needs an end tag, except for `<img />`, `<link />`, and a few others.
  - Those "others" include `<meta />` and `<input />`, which will be used much more later on, and some elements you're discouraged from using (see below).
- The first HTML file you make for any website should be `index.html`.
  - Notice that if you go to `amazon.com` and `amazon.com/index.html`, it's the same page. If you don't put a file name and extension at the end of a URL, servers always look for and display `index.html`.
- Indentation is **really important** for readability (and maintainability).
  ```html
  <body>
  <main>
  <h1>This is wrong.</h1>
  </main>
  </body>

  <body>
    <main>
      <h1>This is right.</h1>
    </main>
  </body>
  ```
- Everything you **see on the page itself** goes in the `<body>`. Everything you **don't see on the page itself, but that somehow affects it** goes in the `<head>`.
  - The `head` generally includes `<title>` and any stylesheets and Javascript.
- Your `class` names should always be semantic:
  ```html
  <div class="centered">This is bad.</div>

  <div class="heading">This is good.</div>

  <header>This is better.</header>
  ```
  - `centered`, `blue-text`, and `comic-sans` would be **stylistic** class names: they don't tell you the function of words, just what they look like. `heading`, `disclaimer`, and `user-info` are **semantic** class names.

## Non-Semantic HTML to avoid

This HTML is all stylistic -- that is, it has no semantic value.

All your styling should be done by CSS. If you use the tags below your page will still work, but:
- It may not look as good
- It will be harder to manage
- It will be very unimpressive to any seasoned developers and employers who look at it

```
<hr />
<small>
<big>
<b>
<i>
<u>
<center>
<font>
<blink>
<marquee>
color=""
border=""
bgcolor=""
align=""
width=""
height=""
```

> \* Use external stylesheets instead: `<link rel="stylesheet" href="myStylesheet.css" />`

## You Do

Please pair up and take 10 minutes to tackle:

[Fix This HTML](./exercises/01-fix-the-html.md)

Then, we'll answer questions.

## Intro to Tables

A table consists of:

- a `<table>` tag
  - a `<thead>` tag
    - one or more `<tr>`s - table rows
      - table headers `<th>`
  - a `<tbody>` tag
    - one or more `<tr>`s - table rows
      - table cells `<td>`
  - a `<tfoot>` tag
    - one or more `<tr>`s - table rows
      - table cells `<td>`

An example table:

```html   
<table>
  <thead>
    <tr>
      <th>City</th>
      <th>Annual Rainfall in inches</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atlanta, Georgia</td>
      <td>49.7</td>
    </tr>
    <tr>
      <td>Austin, Texas</td>
      <td>34.2</td>
    </tr>
    <tr>
      <td>Baltimore, Maryland</td>
      <td>41.9</td>
    </tr>
    <tr>
      <td>Birmingham, Alabama</td>
      <td>53.7</td>
    </tr>
    <tr>
      <td>Boston, Massachusetts</td>
      <td>43.8</td>
    </tr>
    <tr>
      <td>Buffalo, New York</td>
      <td>40.5</td>
    </tr>
    <tr>
      <td>Charlotte, North Carolina</td>
      <td>41.6</td>
    </tr>
    <tr>
      <td>Chicago, Illinois</td>
      <td>36.9</td>
    </tr>
  </tbody>
</table>
```

## Resources

- References ("HTML Dictionaries")
  - [W3Schools: More concise](http://www.w3schools.com/tags/tag_iframe.asp)
  - [Mozilla: More detailed](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- [A more detailed HTML lesson plan](https://github.com/ga-wdi-lessons/html-intro/blob/master/02_html.md#now-were-ready-to-learn-html)

---
