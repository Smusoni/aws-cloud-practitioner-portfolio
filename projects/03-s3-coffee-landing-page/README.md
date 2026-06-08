# Colon Coffee — Brand Landing Page

Hi Terence — here's the coffee brand website you asked for, live and online.

## What You Asked For
You wanted a simple one-page website for Colon Coffee — something clean you could view online, with no server to manage.

## What I Built For You
I built a single-page landing site for Colon Coffee and hosted it on Amazon S3. It's live at a public link anyone can visit — no login needed to see it. The page covers the brand story, a menu, the craft behind the coffee, and a visit section.

**Live site:** http://colon-coffee-terence-2026.s3-website.us-east-2.amazonaws.com/

## The AWS Services I Used (plain English)
- **Amazon S3**: storage that can also host a website. I uploaded the page, turned on website hosting, and made it publicly readable so visitors can see it.
- **Static website hosting**: an S3 feature that serves your web page directly to anyone with the link — no server required.
- **Bucket policy**: a permission rule that allows the public to *view* the website files (and only view them).

## Why This Is The Right Fit For You
A one-page brand site doesn't need a server running 24/7. Hosting it on S3 means it's always available, costs almost nothing, and there's nothing to maintain. If you want to update the page later, you just replace one file.

## How It Works
```mermaid
flowchart LR
  Visitor[Visitor] --> S3[S3 Static Website: Colon Coffee]
  S3 --> Page[index.html served publicly]
```

## Proof It Works
| Screenshot | What it shows you |
|---|---|
| screenshots/live-site.png | The Colon Coffee site loading live in a browser |
| screenshots/s3-hosting-enabled.png | Static website hosting turned on in S3 |

## What This Costs You
Effectively nothing. S3 storage for one page is a fraction of a cent, and visits are billed per request at tiny amounts. Well within free tier. See [cost-notes.md](cost-notes.md).

## Maintenance / Cleanup
See [cleanup.md](cleanup.md). The site should stay live while you want it online — there's no running cost to leave it up.

## Concepts Demonstrated
See [concepts-demonstrated.md](concepts-demonstrated.md).
