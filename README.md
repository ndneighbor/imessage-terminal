# IMESSAGE TERMINAL

A cli interface to send messages in your terminal to your parental or friend unit

### The Story

When at work, I usually have a 4 panel terminal instance of monitoring tests and logs

I really dislike context switching so I made this ruby app that allows you to chat to a user.
As for now, I keep my phone with me I look at the messages there and respond in term but hope
to have replies in the next release.

As of now this project only works on Mac, but I am planning to expose the message endpoints via
API to make it so that the people who use linux or windows work computers can still enjoy their 
iMessage.

## Useage

This project has been tested on Ruby 2 or greater 
Right now it is on version 0.10

### Getting Started

1. Clone the repo

```bash
git clone https://github.com/ndneighbor/imessage-terminal.git
```

2. Change directory into the repo

3. Run the client (where contact number is surrounded in quotes like `"+19999999999"`)

```bash
ruby imessage-cli.rb "CONTACT_NUMBER"
```

4. Tell your `CONTACT_NUMBER` how good work is.

## Roadmap

Like any sane project we use adhere to semantic versioning

0.2.0 - Add contact replies in the interface
0.3.0 - Add better command-line options and options handling
0.4.0 - Support changing target contact mid application
0.5.0 - I should be adding tests anyways but by here we should be at 100 percent coverage
0.8.0 - API exposing AppleScript endpoints for cross platform client
1.0.0 - Ruby gem release

### Thanks

This area is reserved for awknowledgement
I am accepting issues and PRs so feel free to ping me at @ndneighbor on Twitter and here

(This wouldn't be possible if I didn't get inspired by https://github.com/linjunpop/imessage)
