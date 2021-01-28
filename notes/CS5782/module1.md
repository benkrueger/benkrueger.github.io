# Information Security Module one notes

#Intro to Information Security
Information Securiry is a burgeoning field that has become
ever more important in a digital world. 

## Brief Cybersecurity Statistics
 - There is a cyberattack every 39 seconds
 - 71% of breaches are financially motivated, 25% are espionage
 - The costs of cyberattacks globally are estimated at 6 trillion a year
 - 64% of people in the US have not checked if their PI has been leaked.
 - 1 in 13 web requests leads to malware.
 - Banking and healthcare are most commonly targeted industries.

## Common technologies deployed in cybersecurity
- AI and Deep learning
- Endpoint detection and response
- User and entity behavior analytics
- Embedded systems
- Blockchain
- Cloud and security broker systems

## Threat modeling
### Threat modeling is how organizations model cyber threats and come up with plans for mitigation and response.

### Threat Model Terminology
- Asset: Resources to protect
- Vulnerability: Any potential system weakness
- Threats: Any potential security danger
- Threat actors: Entity that takes advantage of a vulnerability
- Exposure: Instance of being exposed to losses from a threat agent.
- Safegaurd: Any mechanism meant to prevent explotation of a vulnerability

### Threat modeling is a process of improving security by identifying vulnerabilities, threats and mitigation techniques
### With TM you can:
- Prioritize Threats
- Make decisions about what to adopt
### Important points about TM:
- TM can be applied to software, hardware, networks, systems and projects.
- TM is best deployed 
at beginning of a project

## Outline of threat modeling procedure:
- Identify Assests
- Identify and Analyze threats
 - Gather information about types of threats, affected systems, 
 detection mechanisms, tools and processes use to exploint vulnerabilities, and motivations of attackers. 
- Perform risk management prioritization by:
    - Risk assesment
    - Correlating intel on threats with assets
    - Understanding system status and vulnerabilities
    - Pentesting
    - Audits
    - Identifying vulnerability fixes

## TM Metrics:
- Scoring systems like CVSS
- Pentests
- Vulnerability assesments (aka audits)

## Threat models
### Various frameworks for threat models exist to:
- Help reconcile threats and mitigation strategies
- Have a process that helps find all threats and systems
- Think about possible flaws
- Best deployed early in project development

# Common Threat Models and their operation

## STRIDE
### STRIDE is an acronym for:
1. Spoofing
2. Tampering
3. Repudiation
4. Information Disclosure
5. Priviledge Escalation

### STRIDE is best used in DFD diagrams to evaluate every component of a system.
Generally, you want to diaram the entire system
- Use structured DFD 
- Add trust boundaries that intersect all data flows
- Figure out attack surfaces: Net, cloud, endpoint, etc
Side note: Encryption of net traffic does not prevent spoofing or tampering
### Every element of STRIDE Has a corresponding Mitigation measure

## STRIDE Threat Mitigation Table

|Element|Security Control|Mitigation Measure|
|---|----|---|
|Spoofing|Authentication|Passwords, MFA,Signatures|
|Tampering|Integrity|Passwords, ACLs,Signatures|
|Info Disclosure|Confidentiality|Passwords,ACLs,Signatures|
|DOS|Avalibility|Permissions,Filtering|
|Priviledge Escalation|Authorizing|ACLS, Input Validation|

## STRIDE: Model Validations
- STRIDE must be used to validate entire model
    - Does the diagram model entire system?
    - Are all threats enumerated?
    - Minimum STRIDE table for every Element at boundary
    - Is each threat Mitigated?
    - Are mitigations impleneted correctly?

## PASTA
### Process for Attack Simulation and Threat Analysis
- 7 Step attack centric method
- Aligns biz objectives with tech requirements and considers biz impact

### PASTA steps:
1. Define biz objectives
2. Define technical scope of assets and components
3. Decompose application use cases, trust levels, entry points, actors, assets, roles, data stores, DFDs, and Trust Bounds
4. Analyze Threats - probabalistic attack scenarios, regression analysis, security events, threat intel correlation and analytics
5. Analyze Vulnerabilities - reports and issue tracking
6. Attack modeling analyze attack surfaces and attackers.
7. Analyze Risks and develop countermeasures.

## CVSS: Common Vulnerability Score System
- Developed by NIST
- Way to capture characteristics of a vulnerability and provide numerical scores
- For security teams to asses threats, impact and find counters
- Allows changing scores when new vulns are found
- Accounts for inherent properties of a threat as timpacts of the virk factor
- also inclues measures that allow sec teams to specifically modfy risk scores based on system config
- CVSS measures risk severity
- Can be expressed as a string as well as a number to specify vulnerability characteristics
|Rating|CVSS Score|
|---|---|
|none|0|
|low|0.1-3.9|
|medium|4.0-6-9|
|high|7.0-8.9|
|critical|9.0-10.0|

### CVSS Use case
- Lets say you find a vulnerability that allows for a remote attacker to send trivial requests to a web server causing the web server to disclose plaintext admin passwords. This isn't just a confidentiality problem, it also allows arbitrary remote code execution with admin privledeges.

- This vuln would get a score of 7.5
- The string for it would be: 3.1/av:n/AC:1/PR:N/US:N

## Attack Trees
- Hierarchical graphs that describe how secure a system is
- Display attack goals as a rooot with possible breach paths
- Can be used with PASTA, CVSS, and STRIDE

## Security Cards
- Methodology based and brainstorming mechanism
- Facilitate broad exploration of threats
- Sort of like magic or D&D with sec threats
- Explore with 42 cards along 4 dimensions
    - Human Impact
    - Adversary motivations
    - resources
    - Methods

## VAST model
- Visual, Agile, Simple, Threat model is enterprise foucused
- Recognizes the security concerns of devs and infra are different
- 2 Threat model types: Application and Operational
- Application tms use process flow diagrams
- Operation TMs use DFDs
- Models scale across infra and DevOps
- Integrates seamlessly into agile enviroment
- Provite actionable, accurate and consistent outputs for dev, sec and exec

## DREAD model
- Quantitative risk analysis technique that rates, compares and prioritizes cyberthreat severity
- DREAD helps organizations know the damage done by a an attack and asseses future attacks
- DREAD stands for:
    - Damage Potential
    - Reproducibiltiy of attack
    - Exploitability, or how much time, effort and expertise is required to exploit the threat
    - Affected Users
    - Discoverability, how easy is it to find a vuln?

## OCTAVE
### Operationally Critical Threat, Asset and Vulnerability Evaluation model
- Focus on Organizational risk
- 3 Phases
    1. Build asset Based Threat Profiles
    2. Id Infra Vulnerabilities
    3. Develop Security Strategies

## NIST data centric model
### Data centric threat model developed by NIST has 4 steps
1. Identify and Characterize system and data of interest.
2. Identify and seelct attack vectors.
3. Characterizes Security controls for mitigation of attack vectors.
4. Analyze Threat Model

