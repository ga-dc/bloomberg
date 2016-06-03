# Bloomberg

## Day 1

### Intro to HTML & CSS (9am - 12pm)

#### Installfest

The only two required pieces of software for building a webpage (and eventually)
an email template are a web browser and a text editor.

- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [Atom](https://atom.io/)

#### HTML

**HTML** stands for Hypertext Markup Language. It is a language for structuring
documents. Contrast this with the output of other editors you may have used in the past:

- Microsoft Word
- PDFs
- Google Docs

HTML is meant to be Human and Machine readable.

##### Basics of HTML

Let’s say you want to make a webpage of your favorite jokes. Here’s an example using
**fake HTML**.

```
Why did the girl smear peanut butter on the road?
To go with the traffic jam

Why do bananas have to put on sunscreen before they go to the beach?
Because they might peel!
```

We want to give meaning to different pieces of text above, so we separate the words
with tags:

```
<question>Why did the girl smear peanut butter on the road?</question>
<answer>To go with the traffic jam</answer>

<question>Why do bananas have to put on sunscreen before they go to the beach?</question>
<answer>Because they might peel!</answer>
```

The tag at the end -- the closing tag -- looks like the tag at the start -- the open tag
-- but with a slash in it.

Two tags make one **element**.

Elements have to **nest**. That is, every element has to be completely inside another element (like those Russian dolls).

More complex documents (like webpages and emails) have many nested elements:

```html
<!doctype html>
<html>
  <head>
    <title>My first webpage</title>
  </head>
  <body>
    <h1>Jesse Shawl</h1>
    <p>Web Development Instructor at General Assembly</p>
  </body>
</html>
```

Let’s break this one down:

- `<!doctype html>`
  - Tells the browser this is an HTML document
- `<html>`
  - The container for all of our HTML
- `<head>`
  - The container for metadata; is not visible on the page
- `<title>`
  - The words that appear in a browser tab
- `<body>`
  - The container for visible content
- `<h1>`
  - A header element; Ranges from `<h1>` to `<h6>`
- `<p>`
  - A paragraph element

##### You do: Create a Simple About me Page

Feel free to use the above HTML as a starting point. In addition, please add
the following tags:

- An [unordered list](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul) of your skills and/or interests
- A [link](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a) to your linkedin
- An [image](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img) of yourself or your favorite movie star

**Please note**: The above HTML indents two spaces for every nested element.

##### Attributes

HTML elements can have attributes, which provide additional information about an
element:

```
<element attribute-name="attribute value" other-attribute-name="other attribute value"></element>
```

They are key-value pairs separated by whitespace. Note there is no space between
the attribute name, attribute value, and the equals sign.

For accessibility purposes, images should have the `alt` attribute specified. This text
will display if the image cannot be displayed, or if the user is using a screen reader to
read content.

##### Semantic Tags

You do: Read [A Look into proper HTML Semantics](http://www.hongkiat.com/blog/html-5-semantics/) and
answer the following questions:

1. What is the purpose of semantic tags?
1. What are common unsemantic tags to avoid?
1. What are common semantic tags to use instead?

You do: Write the HTML for a recent LinkedIn email I received, using semantic markup:

[![](./exercises/01-linkedin/linkedin.png)](./exercises/01-linkedin/linkedin.png)

#### CSS

CSS stands for Cascading Stylesheets

- Cascading
  - Styling instructions can overlap and overrule one another
- Stylesheets
  - Documents containing instructions dictating the appearance of a webpage

CSS Syntax:

```
selector {
  property: value;
}
```

e.g.

```
h1 {
  color: red;
}
```

##### Selecting Elements

Common Selectors:

- `*`
  - Selects any element
- `E`
  - Selects any element of type E
- `#myid`
  - Selects any element with ID equal to "myid"
  - e.g. `<div id='myid'></div>`
- `.myclass`
  - Selects any element with class equal to "myclass"
  - e.g. `<div id='myclass'></div>`
- `E.myclass`
  - an E element with class equal to "myclass"
- `E F`
  -  an F element child of an E element
- `E, F`
  -  an E element and an F element

[And many more!](https://www.w3.org/TR/css3-selectors/#selectors)

You Do: [CSS Diner](http://flukeout.github.io/) up to level 10

##### Box Model

![](https://dl.dropbox.com/s/d1fk9mu23q0byhh/Screenshot%202016-05-25%2009.08.53.png?dl=0)

The Box Model explains how CSS Width is Calculated

How big is the box in [box-model.html](http://www.wdidc.org/~jesse/box-model.html)?

You Do: CSS Crash Course

In pairs, please work to complete the 02-css-crash-course exercise

Again, in pairs, please complete the LinkedIn exercise from before, this time adding styles!

### Tables and Responsive Design (1pm - 4pm)

#### Tables

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

Historically, tables were used for layout before CSS became more popular.

- Couples content with style
- Non-semantic

Table elements should be reserved for structuring tabular data only.

You do: add a third colum `State` to the above table. Separate out the city and
state to give more structure to the tabular data. Starter code is available in 
[03-tables/](./exercises/03-tables/)

## Responsive Design

Ultimately we are trying to answer the question:

>How do we build web applications and sites for an optimal interaction experience on a multitude of devices?

### How we got here

In the beginning, there was no CSS. Every site looked nearly identical. As styling web pages became more common,
developers began structuring their pages with table layouts and fixed-width CSS.

Many designers still ask

>What are the most common dimensions for a website design?

## You tell me! http://screensiz.es

What makes a design fixed? What makes a design fluid? What makes a site responsive?

Check out [mediaqueri.es](http://mediaqueri.es) for inspiration.

## Mobile Specific Sites

One way to create optimal experiences for mobile users is a dedicated mobile site.

You know you're on one when you see `m.` in the url!

Compare https://m.ups.com with [https://ups.com](https://www.ups.com/?Site=Corporate&cookie=us_en_home&inputImgTag=&setCookie=yes)

![](http://imgs.xkcd.com/comics/server_attention_span.png)

Avoid these... please.

## The Three Components of Responsive Web Design

1. Flexible (or Fluid) Grids
1. Flexible Images (or Media)
1. Media Specific Layouts

## Flexible Grids

A grid based layout which adjusts with screen size.

## Flexible Images

We need images that fit their containers.
It turns `max-width: 100%` is the answer.  Most of the time.  For any media.

Even as our flexible container resizes, shrinking or enlarging our image, the image’s aspect ratio remains intact.

```css
img,
embed,
object,
video {
  max-width: 100%;
}
```

## Media Queries

One way to adjust the styles depending on the device's size is by using media queries:

```css
body{
  background: papayawhip;
}

@media (max-width: 400px){
  body{
    background: tomato;
  }
}
```

Using media queries, we can group our css rules according to the size of our expected viewing devises.  This media query says, if our viewport is less than 400px, use the following css rules.

The 400px corresponds to the device's viewport.  A device's viewport is different from both its screen size and resolution.  Check out [this article](http://www.quirksmode.org/mobile/viewports.html) if you're interested in why.

Other possible values include

```
/* these are most commonly used */
min-width | max-width | min-height | max-height

/* these are possible, but less common */
| width | height
| device-width | min-device-width | max-device-width
| device-height | min-device-height | max-device-height
| aspect-ratio | min-aspect-ratio | max-aspect-ratio | max-device-aspect-ratio
| device-aspect-ratio | min-device-aspect-ratio |
| color | min-color | max-color
| color-index | min-color-index | max-color-index
| monochrome | min-monochrome | max-monochrome
| resolution | min-resolution | max-resolution
| scan | grid
```

## You do: Media Queries (15 min)

### Step 1

Working with the example above, create a [jsfiddle](https://jsfiddle.net/), [codepen](http://codepen.io/pen/), or [webpage](http://justinjackson.ca/words.html) that includes at least two media queries.

When the viewport is less than 800px wide, make the background yellow. When the viewport is less
than 400px wide, make the background green.

![](https://dl.dropboxusercontent.com/s/o8xh3hdql9oijo2/mediaqueries.gif?dl=0)

### Step 2

Try out a few of the properties above. You can combine media queries to get several different results.

i.e. what combination of media queries could produce the following grid as the viewport [changes size](http://maximin.tv/srm/)?

| green     | yellow | red    |
|-----------|--------|--------|
| turqouise | green  | purple |

[Like this.](http://recordit.co/UfnuMHQbWa)

### Media Query Logical Operators

You should have just seen these in your research.

Q. How do we "and" two media queries?
---

> A. The "and"  clause

```css
@media (min-width: 700px) and (orientation: landscape) { ... }
```


Q. How do we "or" two media queries?
---

> A.  Comma separated List

```css
@media (min-width: 700px), handheld and (orientation: landscape)
```

Q. What does the "not" keyword do?
---

> A. Applies to the whole media query and returns true if the media query would otherwise return false (such as monochrome on a color display or a screen width of 600px with a min-width: 700px feature query).  [See more here](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries#not)


## Mobile first vs Desktop first

Q. What is the difference between starting with the smallest viewport and applying styles as the viewport size increases
and starting with the largest viewport size as the default?
---

> A. See below.

Q. Do the order of the media queries matter?
---

> A. Yes.

Q. Do media queries affect specificity?
---

> A. No.

[Read more](https://css-tricks.com/logic-in-media-queries/)

## Relative units of measurement

So far, we've been working with pixels (absolute unit of measurement) and percentages (relative unit of measurements)

### You do: Research the following units

Form groups with your tables to research, discuss (15 min), and demo one of the following pair:

- em and rem
- vh and vw
- vmin and vmax
- ex and ch

## You do: Convert the "Craigslist Grid"

[Craigslist Grid](./exercises/04-craigslist-grid/)

## We do: Check it out w/ Chrome dev tools (15 min)

Be sure to include

```html
<meta name="viewport" content="width=device-width">
```

>Mobile Safari introduced the "viewport meta tag" to let web developers control the viewport's size and scale. Many other mobile browsers now support this tag, although it is not part of any web standard.  This setting makes the width of the browser’s viewport equal to the width of the device’s screen.

## Bonus: AIGA Exercise

[05-aiga](./exercises/05-aiga/)

## Questions

1. What are the three components of responsive web design?
2. How do we "and" two media queries?
3. What is the name of the design pattern where the initial designs support mobile, then we move to larger devices?

## Cheatsheet:

- Sizes, sizes, and more sizes
- fluid media: `img, embed, object, video { max-width: 1 };`
- `@media (max-width: 400px) { ... }`
- min/max-width, min/max-height
- And: `@media (max-width: 400px) and (orientation: portrait) { ... }`
- Or (comma separated): `@media (min-width: 700px), handheld and (orientation: landscape) { ... }`

## Resources

- The post that introduced us to [responsive web design](http://alistapart.com/article/responsive-web-design)
- http://screensiz.es
- http://mediaqueri.es
- Media Query [Logical Operators](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries#Logical_operators)
- [Viewports](http://www.quirksmode.org/mobile/viewports.html)
- Book: Responsive Web Design, Ethan Marcotte