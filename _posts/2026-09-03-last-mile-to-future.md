---
layout: post
title: "The Last Mile to the Future"
date: 2026-09-03 12:00:00 +0300
image: /assets/images/last-mile-to-future/cover.jpg
---

*How the physical world becomes callable.*

![A post-AI world in which human intent connects directly to services, payments and physical execution](/assets/images/last-mile-to-future/cover.jpg)

*One possible picture of a post-AI world in which human intent connects directly to services, payments and physical execution.*

Imagine you are standing somewhere in the Sahara.

You raise your wrist and say to your watch:

“I want a cold Coke.”

That is all.

Your personal agent understands what you want and where you are. The request travels through whatever network is available — perhaps a satellite network. The agent discovers providers capable of fulfilling it, compares their offers and returns the best option:

> $2.80 · cold · delivered in 12 minutes.

You confirm.

The payment system verifies that your agent is authorized to spend the money under the conditions you approved. Somewhere miles away, an autonomous hub receives the order. A drone picks up the drink and flies toward you.

Twelve minutes later, an intention has become a physical result.

It sounds like science fiction. But what makes this scenario interesting is that almost every component required to build it already exists in some form.

By the post-AI future, I do not mean a world after AI. I mean a world in which AI itself is no longer the novelty. It has become infrastructure.

The interesting question then becomes:

What happens next?

## From Apps to Intent

The interface between humans and the digital world has changed several times.

The Web made information addressable. Smartphones turned services into apps. AI is now making human intent understandable by machines.

Perhaps the next step is that the physical world itself becomes callable — almost like a function in software.

Today, when you want to buy something, you are expected to know which application to open. You find a store, search for a product, compare options, choose a delivery method and approve a payment.

But why should you need to know which application, merchant or logistics company is supposed to solve your problem?

An agentic interface could work differently. You describe what you want; your personal software discovers how it can be done; you approve the actions that matter; the relevant services execute them.

The interaction becomes remarkably simple:

> intent → offer → confirmation → result

Instead of you navigating services, services become accessible to your intent.

## Pieces Already in Place

The striking thing about this scenario is that it does not depend on one breakthrough technology. Many of the required components are already being built independently.

### Connectivity

[Starlink Direct to Cell](https://www.starlink.com/business/direct-to-cell) turns satellites into something much closer to cellular infrastructure in space. Starlink says the system works with existing LTE phones without requiring specialized hardware, firmware changes or special applications. Its [2025 progress report](https://www.starlink.com/updates) says the first-generation Direct to Cell constellation had been deployed and had connected more than 12 million people at least once.

So the first part of the Sahara scenario — expressing an intent from somewhere far outside normal terrestrial coverage — is increasingly plausible.

### Agents That Can Work With Other Agents

AI systems are moving beyond answering questions toward performing actions, while new protocols are emerging to let independently built agents work together.

The [Agent2Agent protocol](https://a2a-protocol.org/), or A2A — originally developed by Google and since [donated to the Linux Foundation](https://developers.googleblog.com/en/google-cloud-donates-a2a-to-linux-foundation/), where it is now a hosted project of the Agentic AI Foundation — standardizes how agents advertise capabilities, discover one another and exchange tasks even when they are built by different vendors or with different frameworks. In other words, one agent does not necessarily need a custom integration for every other agent it may need to use.

That begins to look like a discovery layer for an agentic service economy.

### The Merchant With an API

The seller in the Sahara scenario is also beginning to appear.

Shopify and Google co-developed the [Universal Commerce Protocol](https://shopify.engineering/UCP) (UCP), an open standard for interactions between AI agents and merchants. UCP covers operations including product discovery, checkout, payments, orders and fulfillment.

In June 2026, Shopify [opened its agentic-commerce infrastructure](https://www.shopify.com/news/spring-26-edition-dev) to the broader developer ecosystem. Its Catalog API exposes structured product information from millions of merchants, while UCP provides a common language for agents to interact with them.

OpenAI introduced another approach with Stripe in 2025 through the [Agentic Commerce Protocol](https://stripe.com/newsroom/news/stripe-openai-instant-checkout), designed to allow AI systems and merchants to participate in the purchasing process together.

The important shift is not which protocol eventually wins.

It is that merchants are starting to expose machine-readable commercial capabilities.

### Authorization and Payments

Once software begins spending money, trust becomes a fundamental infrastructure problem.

How does a merchant know that an AI agent was actually authorized to make a purchase? How does a user give an agent enough authority to act without giving it unrestricted access to their funds?

Google's [Agent Payments Protocol](https://ap2-protocol.org/) (AP2) is an open framework for agent-led transactions across payment systems. Visa is building [Intelligent Commerce](https://usa.visa.com/about-visa/newsroom/press-releases.releaseId.22496.html), Mastercard is building Agent Pay, and Stripe is building infrastructure that allows agents to hold and spend money within defined guardrails.

This suggests a useful principle for personal agents: an agent does not need to know or control all of your funds.

It needs a verifiable and limited permission to perform a particular action:

- Buy this item.
- Spend no more than $5.
- Require delivery within 12 minutes.

That is very different from giving an AI unrestricted access to a bank account.

### Physical Execution

The last part of the chain is already moving from laboratory demonstrations into commercial infrastructure.

[Wing](https://wing.com/news/wing-and-walmart-seven-new-markets-drone-delivery), an Alphabet company, says it has completed more than one million commercial deliveries across three continents. Its systems are highly automated, businesses can integrate delivery through APIs, and Wing and Walmart are building a network planned to exceed 270 locations.

The current service is obviously not a global Sahara delivery network. But the important primitive already exists:

> merchant system → delivery API → autonomous aircraft → physical result

### Personal Data Without One Giant Database

A personal agent also does not necessarily need to become a database containing your entire life.

The [Solid project](https://solidproject.org/) proposes personal online data stores, or Pods, in which people control which applications and AI agents may read or modify particular data. Your data can remain separate from the application that acts on it.

That matters because a genuinely personal layer should not require a central platform to know everything about you.

Your bank can know your account balance without your calendar knowing it.

Your doctor can know your medical history without your shopping agent knowing it.

Your personal agent may only need to know where the relevant capability exists and whether it has permission to use it.

Put the pieces together and a chain begins to emerge:

> intent → connectivity → discovery → merchant capability → authorization → payment → fulfillment

The pieces exist.

The system does not.

## The Missing Layer

What seems to be missing is not another chatbot and perhaps not another super app.

It is a personal control layer capable of connecting human intent with the capabilities of the digital and physical world.

The interface might need to understand requests such as:

- “I want a cold Coke.”
- “Tell me if Bitcoin falls below $70,000.”
- “Find me a flight to Paris below $200.”
- “Book a good dentist next week.”
- “I need this medicine today.”

Behind those sentences are entirely different companies, industries, regulations, payment systems and methods of fulfillment.

But from your perspective, the interaction does not necessarily need to change:

> intent → offer → confirmation → result

Making this work at global scale still requires much more than better language models. It requires machine-readable service interfaces across industries, reliable service discovery, interoperable identity and authorization, trusted agent payments, clear liability rules and physical fulfillment networks.

There is also a stubborn physical constraint hidden inside the Sahara example.

A satellite can move information thousands of kilometers in a fraction of a second.

It cannot move a Coke thousands of kilometers in twelve minutes.

## The Physical Last Mile

The true last mile may therefore be distributed physical availability.

Imagine small autonomous hubs stocked with frequently requested goods, served by robots and delivery drones, and positioned close enough to demand to provide rapid fulfillment.

Those hubs might contain food, medicine, spare parts, batteries and other high-frequency products. Predictive systems could determine what inventory should be stored where, while autonomous vehicles continuously replenish the network.

This is not a minor detail. It is what connects a near-instant digital decision to the constraints of geography.

The Internet distributed information.

Cloud computing distributed computation.

A future agent economy may also distribute physical inventory and execution.

Only then does something like the Sahara example become possible at meaningful scale.

## Not an Everything App — Everything Accessible

There are at least two ways such a future could develop.

One is the familiar super-app model: a large company gradually brings communication, commerce, payments, transportation, content and AI inside its own ecosystem.

But another architecture is possible.

Your money remains with your bank. Your health information stays with the systems you choose. Merchants retain their inventory and commercial infrastructure. Logistics networks operate their own fleets. Payment networks process transactions.

Your personal agent sits above them and receives only the permissions required to coordinate them when you ask for something.

The distinction is subtle but fundamental: everything does not need to live inside one application.

Instead, everything can become accessible through one personal interface.

That architecture resembles the open Web more than a traditional super app.

The Web did not require one company to own every website. The browser gave the person a common interface to independently operated resources.

A personal agent could eventually play a similar role for services — and perhaps for parts of the physical world.

## From the Attention Economy to the Intent Economy

There is another consequence.

Much of today's Internet is optimized around capturing attention. Businesses spend enormous amounts of money persuading you to look at an advertisement, open a website, browse a catalog and eventually press Buy.

But suppose your personal agent already knows that you want a cold Coke delivered within twelve minutes.

The merchant has a different problem.

It does not necessarily need to win your attention first. It needs to make its offer understandable to your agent and competitive against your intent:

- Price.
- Availability.
- Delivery time.
- Quality.
- Reputation.
- Terms.

This could move part of digital commerce from an attention economy toward an intent economy.

In that world, an API stops being merely a technical integration.

It becomes a distribution channel.

Today, a business needs a website.

Tomorrow, it may also need a machine-readable endpoint capable of answering:

> Can you satisfy this person's intent — and under what conditions?

## AI as the Translator

AI itself is not necessarily the final product in this picture.

Its role is more fundamental: it translates between the ambiguous language of human intention and the structured capabilities of machines.

You should not need to understand A2A, UCP, AP2, payment tokens, logistics APIs or satellite networks.

You should not need to say:

> `POST /merchant/fulfillment/create`

You say:

> “I want a cold Coke.”

The system translates that sentence into a sequence of discoverable, authorized and auditable actions.

That may be one of the most important consequences of modern AI: for the first time, we have something approaching a universal interface between human intent and software.

The open question is how far that interface can extend beyond software.

## The Last Mile to the Future

This is not a prediction that the post-AI world will look exactly like the Sahara scenario.

The opposite is what makes it interesting.

Satellite connectivity, AI agents, agent interoperability, commerce protocols, agent payments, personal data stores and autonomous delivery are being developed by different organizations to solve different problems.

Yet their trajectories are beginning to intersect.

Perhaps the next major platform will belong to one company.

Perhaps it will emerge as an open family of protocols.

Perhaps the personal agent will become something like a browser for services and the physical world.

Or perhaps the pieces will come together in a way we have not yet imagined.

The question I find most interesting is therefore not simply “Who will build it?” and not simply “What comes after AI?”

It is this:

How might the post-AI future come together around the person — and what could connect all these pieces into one coherent experience?

Because once machines can understand what we want, the next frontier may be teaching the world how to respond.

From apps to intents.

From information on demand to action on demand.

From a digital world we can browse to a physical world we can call.
