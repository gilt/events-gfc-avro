# GFC Avro Event Definitions

Shared Avro schemas meant to be imported into other schemas. See: [events-mobile-tapstream](https://github.com/gilt/events-mobile-tapstream) for an example.

## Prerequisites

  - [Mobile Service Tools](https://github.com/gilt/mobile-service-tools)

## Contribution guidelines

### Pull requests are always welcome

We're trying very hard to keep GFC Avro Event Definitions simple, lean and
focused. We don't want it to do everything for everybody. This means that we
might decide against incorporating a new API feature.

### Create issues...

Any significant improvement should be documented as [a GitHub
issue](https://github.com/gilt/events-gfc-avro/issues) before anybody starts
working on it.

### ...but check for existing issues first!

Please take a moment to check that an issue doesn't already exist documenting
your bug report or improvement proposal. If it does, it never hurts to add a
quick "+1" or "I have this problem too". This will help prioritize the most
common problems and requests.

### Conventions

Fork the repository and make changes on your fork in a feature branch:

- If it's a bug fix branch, name it XXXX-something where XXXX is the number
  of the issue.
- If it's a feature branch, create an enhancement issue to announce your
  intentions, and name it XXXX-something where XXXX is the number of the
  issue.

Note that the maintainers work on feature branches in this repository.

Make sure the events.avdl is valid. One simple way to do this:

    #TODO: proper avdl validation command and response
    curl -X POST -d @./api.json http://api.apidoc.me/validations

you should see:

    {"valid":true,"errors":[]}

Pull requests descriptions should be as clear as possible and include a
reference to all the issues that they address.

### Merge approval

GFC Avro Event Definitions maintainers use LGTM (Looks Good To Me) in
comments on the code review to indicate acceptance.

A change requires LGTMs from an absolute majority of the [current
contributors](https://github.com/gilt/events-gfc-avro/blob/master/MAINTAINERS)
.

#### Small patch exception

There are several exceptions to the signing requirement. Currently these are:

* Your patch fixes spelling or grammar errors.
* Your patch fixes Markdown formatting or syntax errors in any .md files in
  this repository

### How can I become a maintainer?

Make important contributions

Don't forget: being a maintainer is a time investment. Make sure you will
have time to make yourself available. You don't have to be a maintainer to
make a difference on the project!

## What is a maintainer's responsibility?

It is every maintainer's responsibility to:

1. Deliver prompt feedback and decisions on pull requests.
2. Be available to anyone with questions, bug reports, criticism etc. on
   their component. This includes Hip chat and GitHub requests
3. Make sure their component respects the philosophy, design and
   road map of the project.

## How are decisions made?

Short answer: with pull requests to this repository

All decisions affecting GFC Avro Event Definitions, big and small,
follow the same 3 steps:

1. Open a pull request. Anyone can do this.

2. Discuss the pull request. Anyone can do this.

3. Accept (`LGTM`) or refuse a pull request. The relevant maintainers
  do this (see below "Who decides what?")
 + Accepting pull requests
  - If the pull request appears to be ready to merge, give it a `LGTM`, which
    stands for "Looks Good To Me".
  - If the pull request has some small problems that need to be changed, make
    a comment adressing the issues.
  - If the changes needed to a PR are small, you can add a "LGTM once the
    following comments are adressed..." this will reduce needless back and
    forth.
  - If the PR only needs a few changes before being merged, any MAINTAINER
    can make a replacement PR that incorporates the existing commits and
    fixes the problems before a fast track merge.
 + Closing pull requests
  - If a PR appears to be abandoned, after having attempted to contact the
    original contributor, then a replacement PR may be made. Once the
    replacement PR is made, any contributor may close the original one.
  - If you are not sure if the pull request implements a good feature or you
    do not understand the purpose of the PR, ask the contributor to provide
    more documentation. If the contributor is not able to adequately explain
    the purpose of the PR, the PR may be closed by any MAINTAINER.
  - If a MAINTAINER feels that the pull request is sufficiently
    architecturally flawed, or if the pull request needs significantly more
    design discussion before being considered, the MAINTAINER should close
    the pull request with a short explanation of what discussion still needs
    to be had. It is important not to leave such pull requests open, as this
    will waste both the MAINTAINER's time and the contributor's time. It is
    not good to string a contributor on for weeks or months, having them make
    many changes to a PR that will eventually be rejected.

## Who decides what?

All decisions are pull requests, and the relevant maintainers make decisions
by accepting or refusing pull requests. Review and acceptance by anyone is
denoted by adding a comment in the pull request: `LGTM`. However, only
currently listed `MAINTAINERS` are counted towards the required majority.

GFC Avro Event Definitions follows the timeless, highly efficient and totally
unfair system known as [Benevolent dictator for
life](http://en.wikipedia.org/wiki/Benevolent_Dictator_for_Life), with yours
truly, Peter Barron, in the role of BDFL. This means that all decisions are
made in the end, by default, by Pete. In practice decisions are spread across
the maintainers with the goal of consensus prior to all merges.

### I'm a maintainer. Should I make pull requests too?

Yes. Nobody should ever push to master directly. All changes should be made
through a pull request.

### Who assigns maintainers?

Yon has final `LGTM` approval for all pull requests to `MAINTAINERS` files.

### How is this process changed?

Just like everything else: by making a pull request :)
