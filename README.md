Endorsement Tokens

This is an overview of the project **Endorsement Tokens** presented on the [Blockchain For Social Impact Hackathon](https://www.blockchainforsocialimpact.com/hackathon/).

# Mission

Our mission is to allow job seekers and employers trust each other, by creating a reliable reputation system for professionals, 

# The Problem

**There is not a reputation system that job seekers and employers can use to trust one another with confidence. This slows down the speed at which job seekers and employers can find each other without intermediaries.**

Today, LinkedIn is the world's most powerful tool for job-seeking professionals and employers. Unfortunately, LinkedIn's doesn't offer a trusted reputation system.

A significant fraction of LinkedIn members have included education and skills in their profiles. But this information is shallow: people are mostly honest when they list their skills and credentials, but there's no way to know how good they are at the skills they claim.

Our mission is to fix this problem, by creating a reputation system that allows job seekers and employers trust each other.

# The Solution

A reputation system where trusted relationships endorse one another, every person is incentivised to say the truth, and penalized for saying wrong information.

We combine the concepts of "anonymity", "endorsements", "crowdsourcing" and "prediction markets" to identify the reputation of each individual.

These are some of the elements that describe how the reputation system works:

- Professionals can *assess* themselves.
- Professionals can *endorse* one another.
- These are the areas where professionals can assess themselves and endorse one another:
   - Skills
   - Strengths
   - Weaknesses
   - Leadership and management capacity

- Professionals can create new areas of expertise and use them to endorse other professionals or asses themselves.

- Professionals earn reputation when they endorse other people.

- Professionals earn reputation when they are endorsed by other people.

- For every endorsement, the person endorsing has to rank the person being endorsed against other professionals that have been previously endorsed by the endorser in the same skill. 

- For example, if you endorse 10 people with the skill of sales, they all will have a different position in the ranking, from the 1st to the 10th.

- Endorsements have two dimensions, a label and a number. The label represents the unique identifier of the characteristic being endorsed. The number represents the quality of the endorsement on a scale from 0 (worst known individual in this skill) to 100 (best known individual in this skill). 

- This is an example endorsement (sales, 80): it means that the person being endorsed is better than 80% of all sales professionals that the endorser has previously endorsed.

- When a person being endorsed is introduced in the ranking, it takes the reputation in between the person above and the person below in the ranking.

- The higher the reputation of the endorser, the higher the transmission of reputation to the person being endorsed.

- Professionals have different reputation in different areas of expertise. For example, someone might have a high reputation regarding their knowledge in sales, but a low reputation regarding their knowledge in software engineering.

- Professionals can receive endorsements in a certain skill from other people that have knowledge about that skill. For example, sales professionals can endorse other sales professionals, but they can not endorse software engineers.

- There is an exception to this rule. If a professional wants to endorse someone with a skill they don't have, they write a review of at least 300 characters about why they are endorsing that candidate with that skill. 

- For example, a non-sales professional can endorse someone with the skill of sales, only if they write at least 300 characters about why they are making that endorsement.

- Users can not see the score of endorsement given by other people, but they can see the aggregate after consecutive endorsements.

# The User Persona

A 30 years old woman looking to work at an organization with clear standards for gender equality. She is tired of being part of aggressive masculine work environments and she is looking for a culture fit.

She is a professional with skills in UX design, copywriting, front-end development or angel investing. 

# [The User Story](https://invis.io/VTDK7WAQ6)

This is how a user will use Endorsement Tokens: [https://invis.io/VTDK7WAQ6](https://invis.io/VTDK7WAQ6)

# How It Works | Economics, Incentives & Fees

Endorsement Tokens are a blockchain system that helps professionals save time making custom introductions. To achieve this goal, professionals need to endorse people they trust.

These are some of the design elements to create an efficient system:

## **About the Network of Trust**

Once a professional has signaled their endorsements to people or companies, those endorsements represent the *network of trust* of the individual. Endorsed people will be able to request introductions to any of the people in the network of the person that endorsed them.

## **About Rewarding Discovery**

Endorsement Tokens uses a system of points in combination with an algorithm to incentivise the discovery of new people and companies.

When professionals endorse new people that are not on the system, they are *discovering* a new person. If at any point a person gets a second endorsement, the original endorser of that person will be rewarded with a new token.

When professionals endorse new companies that are not on the system, they are *discovering* a new company. If at any point a company gets a second endorsement, the original endorser of that company will be rewarded with 10 new tokens.

## **About the System Of Points**

Each person in the system will have a number of points associated to their profile based on their contribution to the network. The following are the different ways you can score points:

### Someone Else Endorses Someone You've Already Endorsed: 1 point

A person endorses a person or organization you've already allocated tokens to: 1 point.

### Discovering a Person: 3 points

You endorse someone that didn't exist on the system and that person becomes validated (see validation process below).

### Discovering an Organization: 10 points

You discover an organization that didn't exist on the system and that organization becomes validated (see validation process below).

## **About the Validation of People**

These are the necessary steps to validate that an endorsed person is a real person:

- The professional endorsing a person adds a email address for the endorsed person.

- The endorsing person identifies themselves with Civic.

- A second person endorses them OR they endorse someone else themselves.

## **About the Validation of Companies**

These are the necessary steps to validate that an endorsed company is a real company:

- The endorser enters the URL of the organization.

- The endorser enters the email address of someone (or multiple people) at the organization that can claim ownership of the organization. 

- The email address of those people needs to match the URL of the organization.

- At least one person claims the organization (with the same work email than the domain).

- At least 9 additional people endorse the organization.

## **About Rewarding the Endorsement of Minorities**

When professionals endorse people that are a minority within the system, they will be rewarded with points. The algorithm will have into account the points of each person to reward with coins to endorsers, not by creating inflation, but by using the fees captured when someone changes their tokens from one person endorsed to another.

## **About the System of Tags**

TBD

## **About transaction Fees**

Transaction fees are common in all major economic systems. Governments implement different taxes to collect wealth from citizens and use that wealth later on to maintain the government and build systems for the common good of the society. Those taxes may be used for systems like:

- Health care

- Roads and transportation systems

- Administration costs

- Pay officials

- Maintain an army

- Maintain the environment

- Build parks

- Etc

However, governments aren't perfect. Sometimes it is difficult to be efficient with the resources collected. Other times, the wealth collected from society is leaked to some few corrupted officials with enough power to break the system.

On Endorsement Tokens, all transaction fees go back to the network. There is no administration cost, no corruption, no maintenance needed. There is not a centralized entity that gathers the transaction fees and redistributes it. Smart contracts are in charge to redistribute the transaction fees between all members of the network, proportionally to their contribution, represented with a clear system of points.

The transaction fee is a standard 16%. Once it's collected, it will be given away to the participants of the network with more points. 

# What is the impact of your solution? How will it be measured?

Openness of information has always created radical changes in our society.

By creating openness around professional reputation, workers will be able to make better decisions about who to do business with.

Each endorsement will increase the level of transparency around quality of work and strength of values. Therefore, the greater the number of endorsements, the greater the openness of the information, and the easier that it will be for professionals in the network to make decisions about who to work with.

We will measure impact by the number of endorsements given by each individual over a period of time.

Our goal is that 1 Million people endorse at least 6 people every month by 2019.

# About Identity and Vulnerable Populations

Diversity can 'erroneously' become a stigma, either by the person that is part of a minority, or by the person that is making judgements about the 'diversity' of someone that is part of a minority or vulnerable population.

Without blockchain, the action of 'tagging' a person by their minority inside a public or central system, is very delicate. Who has access to that information can be manipulated. 

With blockchain, people can 'tag' themselves and each other with a sophisticated tag system designed to identify diversity and vulnerable populations, without compromising the information to the public or having a central system to control it, and instead, keep all information private and decentralized.

Endorsement Tokens has embedded an algorithm that will incentivise the discovery of 'diversity' among professionals and companies. All tags will be valued the same at the eyes of the algorithm, but a person with a specific 'tag' will become a minority when there are less people of that tag inside the system. As this happens, the algorithm will reward the endorsement of new people that are a minority within the network.

# What are the risks associated with your solution?

As a system of reputation for professionals, the risks of using Endorsement Tokens are associated with the negative effects that an "approximated reputation" could have on the people that use this technology.

Let's call "ideal reputation" to the numeric representation of a perfect reputation where we were able to calculate through a system of aggregation of information from all users.

The "approximated reputation" is the reputation that has been approximated for a user. This approximation will be calculated based on the endorsements given to that user. The accuracy of the approximated reputation for each user will depend on the number of users that endorse each professional and the accuracy of each endorsement. 

On some occasions, the approximated reputation will be lower than the ideal reputation. On other cases, it will be higher.

These are the negative effect of doing such an approximation:

- When the approximation is lower than the ideal reputation, it could provide a lower number of professional opportunities for the person being endorsed, despite being more qualified than other individuals with higher approximated reputation.

- When the approximation is higher than the ideal reputation, it might create greater career opportunities for the person being endorsed but would disappoint the people that meet that person after looking at their endorsements.

## How to mitigate these risk?

We will provide all users the ability to block their identity. To do this, Endorsement Tokens would:

1. Disassociate the identity of a user to their blockchain.

2. Erase all information saved in the storage provider.

By doing this, users would be avoiding that anyone has access to their information in the future. This would prevent all negative effects that the system could create for them.

# Why is blockchain needed to solve this problem?

## **Trusted History | Avoid Manipulation**

Today, profiles of professionals in LinkedIn are fabricated, and there is not a trusted history of progress of people. Blockchain allows us to track endorsements over time and trust that profiles of professionals have not been fabricated over night.

## **Privacy | Zero Knowledge Proof**

The privacy of all users of Endorsement Tokens is necessary for them to feel comfortable using it. Sensitive information from users will be anonymous. In order to verify it we will use a protocol of Zero Knowledge Proof.

## **Resilience versus centralized entities**

Thanks to blockchain, the system is decentralized and can't be shut down by any centralized entity.

## **Lower Barriers of Entry**

Not all people in the world have access to financial institutions, banks, credit cards, etc. Blockchain is lowering the barriers of entry in countries where financial institutions haven't arrived yet. 

By using blockchain, Endorsement Tokens will lower the barriers of entry of people to this platform.

# What is the size of the market?

We need to do more more research to asses the size of the market. These are some interesting stats:

- As per Technavio's global recruitment services 2017–2021 report, the category spend for this market in 2016 was $468.1 billion ( More info: Global Recruitment Services - Procurement Market Intelligence Report 2017-2021).

- LinkedIn was acquired for $26Billion in 2016.

- Online recruiting market will surpass $bn by 2020 ( U.S. Online Recruitment Market To Rise At 6.47% CAGR Between 2016 And 2020 – Leading Players LinkedIn, CareerBuilder & Monster: https://globenewswire.com/news-release/2016/06/07/846581/0/en/U-S-Online-Recruitment-Market-To-Rise-At-6-47-CAGR-Between-2016-And-2020-Leading-Players-LinkedIn-CareerBuilder-Monster-MarketResearchReports-biz.html)

- Major players in the space:

>     * LinkedIn

>     * CareerBuilder

>     * Monster

>     * SEEK

>     * Zhilian

>     * 51job

>     * Naukri

>     * StepStone

>     * Dice Holdings

>     * Glassdoor

>     * SimplyHired

>     * TopUSAJobs

>     * 104 Job Bank

# What other solutions are currently being used to address this problem?

- While LinkedIn doesn't have a peer-to-peer reputation system, this is what LinkedIn users can do in the platform:

   - Create professional profiles.
   - Endorse professionals.
   - Recommend professionals.
- Traity is used as a standard of reputation: [https://traity.com](https://traity.com)

- Fathom is centered around assessments evaluating a specific quality of an identity and resulting in a credential. We think there is strong potential of collaboration with the work that the team at Fathom is doing: [http://fathom.network/pages/how.html](http://fathom.network/pages/how.html)

# Architecture Overview

- Endorsement Token Backend
The backend consists of several contracts deployed on [Ethreum](https://ethereum.org/) blockchain. See below for the details.

- Endorsement Token Client
The client is the frontend to interact with the the backend on the blockchain. The client use web3.js provided by uPort's stub library. The client will run on the Chrome browser with Metamask.
User content such as profile information is fetched from [IPFS](https://ipfs.io/) with the key obtained from the backend. We will use one of the public IPFS gateway ([Infura](https://infura.io/) IPFS gateway) to access IPFS network.

- uPort/uPort stub
The user will use uPort to manage his or her identify. The user will be able to register with and login  into the Endorsement Token platform. The user of the platform will also control his data through uPort -- make them readable to other users or companies in Endorsement Token platform. We will utilize the stub library called 'uport-connect' and 'uport-registry' for identity and data service, respectively, by uPort.

- Search Engine
The search engine provides off-chain index to provide the user with enhanced experience. The search engine read from IPFS using the key, which is only permissioned to use by the user.

- Reputation Engine
As our algorithm for computing reputation score is distributed and iterative in nature , it's prohibitively expensive to performs the algorithm on-chain. The result of computation is only updated on-chain lazily to save the heavy operational cost for the on-chain storage update.

## Endorsement Token Backend

### Solidity Contracts

- UserRegistry
UserRegistry maintains the mapping between the user's identity to his or her profile and endorsement record. Also expose an interface to allow the user to control the accessibility of his or her profile and data. 

- EndorsementController

- The EndorsementController provides interface for the user to endorse other user on the network. Once relevant data is updated on the backend, the Moderator is invoked to signal the need for recomputation of the reputation score for the endorser, the endorsee and connected users.

	

- Repository

- The repository contract is a central db to store the key of IPFS object for the extended user profile and any data stored in IPFS and their access  permission per user.

- EndorsementToken

- Token contract implements the standard ERC20 interface.

- Moderator

- When a user makes an endorsement to another user with some ratings, the Moderator contract is invoked to update the reputation for both the enorser and the endorsee. The update reputation points is done lazily off-chain.

- GovernanceWallet

- A wallet contract to accumulate fee gathered from the user and the company. The fee is redistributed to the user based on their reputation score periodically.

### Interaction

Interaction model for the contracts to be filled here.

### Parameters

The parameters for the contracts to be filled here.

## Reputation Engine

[https://projects.invisionapp.com/share/HFDISX5Z4#/screens/254220026_How_To_Calculate_The_Reputation_Of_A_User](https://projects.invisionapp.com/share/HFDISX5Z4#/screens/254220026_How_To_Calculate_The_Reputation_Of_A_User)

## Technology stack

Solidity, uPort, react(or angular), web3.js, Metamask

## Development Roadmap

### Phase 1 

*Builds a proof of concept deliverable*

- Interaction model with UI/UX

- Basic Solidity backend

- Sand-boxed uPort integration

- On-chain reputation calculation

- On-chain user profile data

### Phase 2

*On-chain platform*

- Implement Solidity backend interaction model

- Integrate uPort on test-net

- Integrate with IPFS

- Off-chain reputation/search engine

- Rich user interface

### Phase 3 

*Public Alpha platform*

- Contract audit

- Coin offering 

- Public test-net alpha test

### Phase 4

*Platform Launch*

- User data stored on IPFS

# Go-To-Market Strategy

## Network Partners

We acquire companies and candidates by partnering with their networks. A network is an addressable group of employers linked by a common association. They're typically resource constrained, have a high level of influence, and add value to their members by making connections.

## Example Network Categories

- University alumni groups

- Accelerators

- VC Portfolios

- Certifications (e.g. 1% for the Planet)

- Membership organizations (e.g. BCorp)

- Affinity groups (e.g. Women in Tech)

## Key Network Personas

- Network Manager: A person who is in charge of making sure the network achieves its goals.

   - Key Motivation: Acquiring and distributing resources; measuring success.

- Employer: A company representative with hiring responsibilities. 

   - Key Motivation: Finding great talent; filling open roles.

- Connector: Anyone within a network who makes connections (e.g. mentors, investors, members, employers, etc.)

   - Key Motivation: Adding value to fellow network members; helping companies hire; helping seekers find jobs.

- Hirable Professional: A person who is open to new professional opportunities.

   - Key Motivation: Finding a better opportunity; satisfaction and meaning at work.

## Initial Launch Partners

We will launch this service with some selected and existing partners of [Monday](joinmonday.com). In total, those networks are composed of over 2,500 organizations. 

One of those network partners is already excited about running a pilot program with us starting in October.

# Challenge Bucket

Identity and Vulnerable Populations

# Team

**[Alex Haass](https://www.linkedin.com/in/alexandrahaass/) | NYC**

**[Abel Molina](https://www.linkedin.com/in/abel-molina-73150614/) | Kitchener**

**[Yuntai Kyong](https://www.linkedin.com/in/yuntai-k-ba0b978/) | NYC**

**[Irfan Naeem](https://www.linkedin.com/in/irfannaeem/) | D.C.**

**[Ellen Downing](https://www.linkedin.com/in/ellen-downing/) | Denver**

**[Sherlin Chen](https://www.linkedin.com/in/sherlinchen/) | NYC**

**[Raul San Narciso](https://www.linkedin.com/in/raulsann/) | Montreal**

# Advisors

They already have a relationship with the team and will dedicate time to craft this project during the hackathon with a lower time commitment than team members:

**[Graeme Douglas](https://www.linkedin.com/in/graeme-douglas-04758426/) | Kelowna**

**[Evan Walden](https://www.linkedin.com/in/evanwalden/) | Montreal**

