# Writing Styles for Literature Reviews in Machine Learning and Explainable AI

## Framing a literature review for ML models and XAI explanations

A literature review can be treated as a **research method** (not only a “background section”) that **collects, critiques, and synthesises** prior work to create a foundation for advancing knowledge and motivating new research directions. citeturn6search12turn0search3turn6search1 In many fields, review articles range from narrative/theoretical syntheses to more protocol-driven evidence syntheses (e.g., systematic and scoping reviews), and the _type_ you choose changes what “good writing” looks like (e.g., persuasive conceptual integration vs transparent screening and appraisal). citeturn0search8turn4search0turn4search2turn0search3

It helps to separate two ideas that are often conflated:

- **Review methodology (what you did):** e.g., scoping review, integrative review, systematic review, mapping review. Review typologies explicitly distinguish multiple review types and their associated purposes and processes. citeturn0search8turn0search3turn4search2
- **Synthesis/writing style (how you argue and organise):** e.g., concept-centric thematic synthesis, chronological evolution narrative, design-space comparison, debate mapping, theory-building integration. Guidance on integrative review writing, for example, notes that reviews can be structured **temporally, methodologically, or conceptually**, and that structure should align with the review’s purpose. citeturn5view0turn6search0

For your assumed research setting—**build a machine learning model, apply XAI to explain predictions, and (optionally) connect explanations to domain/physics/process causes**—the “best” writing style depends on what you need the literature review to _do_: justify a modelling choice, motivate why XAI is needed, compare explanation methods, map evidence in a domain, or build a mechanism-oriented explanatory framework. citeturn0search3turn3search0turn2search1turn2search3

## The contrastive “however pivot” as a baseline rhetorical move

The trend → contrast (“however…”) → niche/gap move is strongly aligned with **entity["people","John Swales","applied linguist"]’s CARS (Creating a Research Space) model**, where authors “establish a territory” (what we know), then “establish a niche” (gap/counter-claim/question), then “occupy the niche” (what this study does). citeturn7view0turn0search5 The same guidance explicitly lists adversative/concessive signals (e.g., _however, nevertheless, whereas, yet_) and gap/limitation verbs (e.g., _fail, overlook, hinder, lack, question_) as common cues for niche establishment. citeturn7view0

Because you already have this style, the remainder of the report focuses on **other synthesis styles** you can use—each with (i) what it’s for, (ii) common verbs, (iii) a reusable “tell an agent” prompt, and (iv) a machine learning + XAI example aligned to your scenario. citeturn5view0turn6search0turn4search2turn3search0

## Alternative literature-review writing styles with ML + XAI examples

### Concept-centric thematic synthesis (Theme A / B / C)

**What this style does.** Instead of summarising paper-by-paper, you organise the literature around **concepts/themes** (e.g., “local explanations”, “global explanations”, “uncertainty and reliability of explanations”, “domain constraints and plausibility”), then synthesise how findings relate within and across themes. This is closely aligned to concept-centric review advice that contrasts concept-driven organisation with author-centric listing. citeturn6search0turn6search1

**Structure:** group studies by themes → synthesize within each → connect themes → gap.

**Best when:** you want clarity and coverage without getting stuck in publication order.

**Common verbs that fit.** _categorises, clusters, synthesises, consolidates, distinguishes, integrates, abstracts, generalises, converges, diverges._

**How to tell an agent to write like this.**  
“Write the literature review in a **concept-centric thematic structure**: define 4–6 themes, synthesise evidence within each theme, then explicitly connect themes.”  
“Avoid author-by-author summaries; end each theme subsection with a cross-paper synthesis statement and implications for an ML+XAI modelling pipeline.”

**ML + XAI example (illustrative wording).**

> “Across explainable AI, studies can be grouped into (i) **local model-agnostic explanations** (e.g., surrogate-based approaches), (ii) **additive feature attribution** methods, and (iii) **counterfactual explanation** approaches. Within these themes, the literature converges on explainability as a practical requirement for trustworthy deployment, yet diverges on how to evaluate explanation fidelity and user usefulness. Synthesising these themes suggests that an ML model intended for operational decision support should pair predictive performance metrics with explanation-quality checks and domain-plausibility constraints.”

**Example:**
“Prior work clusters into three themes: (1) model design for predictive performance, (2) post-hoc explainability for feature influence, and (3) hybrid approaches that constrain learning with process knowledge. Theme (2) improves transparency, but explanations often remain correlational. Theme (3) suggests a path to align XAI with physics/process reasoning, though empirical validation is still sparse.”

(Background concepts: LIME-style local surrogates, SHAP additive attributions, and counterfactual explanations are widely discussed building blocks in the XAI literature. citeturn1search0turn1search1turn1search6turn3search0)

### Chronological evolution narrative (past → present → next)

**What this style does.** You organise work **over time** to show how the field evolved (e.g., early interpretability → post-hoc explainers → concerns about reliability → movement toward causal/mechanistic or theory-guided approaches). Temporal structuring is explicitly discussed as one viable way to organise integrative reviews. citeturn5view0turn0search3

**Best when:** the field has clear “generations” (classic ML → deep learning → XAI/physics-aware ML).

**Common verbs that fit.** _evolved, progressed, shifted, transitioned, matured, accelerated, emerged, prompted, catalysed._

**How to tell an agent to write like this.**  
“Write a **timeline-driven literature review**: early approaches → key methodological inflection points → current limitations → emerging directions in XAI and mechanism-aware ML.”  
“Use dates and ‘turning points’ (e.g., new explanation methods; new evaluation critiques; new physics-guided ML) to motivate the present research niche.”

**ML + XAI example (illustrative wording).**

> “Early work on interpretability motivating trust in complex models was followed by a wave of post-hoc explanation methods for black-box predictors, including local surrogates and additive feature attributions. Subsequent critiques highlighted that visually or intuitively appealing explanations may not reliably reflect model dependence, shifting attention toward evaluation protocols and more rigorous definitions of interpretability. Recently, the rise of scientific and theory-guided machine learning has reframed explainability as not only ‘why the model predicted’, but also how predictions align with domain constraints and plausible mechanisms.”

**Example:**
“Early predictive models emphasized accuracy and scalability. Later work improved generalization with representation learning and regularization. More recently, XAI methods have been adopted to make predictions auditable and to connect influential features to plausible process causes (e.g., degradation mechanisms). Yet, bridging explanation outputs to domain-valid causal mechanisms remains underdeveloped.”

(These arcs are motivated by well-cited discussions of interpretability definitions and pitfalls, evaluation concerns for saliency/explanations, and theory/physics-guided ML directions. citeturn2search1turn2search2turn3search11turn3search6turn0search3)

### Methodological design-space comparison (head-to-head + trade-offs)

**What this style does.** You treat the literature as a **design space** and compare approaches by dimensions (e.g., model type, data type, explanation scope, computational cost, stability, regulatory fit, domain plausibility). This aligns naturally with a methodological structure for reviews and with XAI taxonomies that categorise methods by different dimensions. citeturn5view0turn3search0

**Best when:** your contribution is partly a method choice (e.g., SHAP vs. counterfactuals vs. concept-based XAI).

**Structure:** compare families → trade-offs → identify mismatch with your problem → gap.

**Common verbs that fit.** _compares, benchmarks, contrasts, evaluates, quantifies, characterises, trades off, prioritises, operationalises._

**How to tell an agent to write like this.**  
“Write the review as a **design-space comparison**: define evaluation dimensions, compare XAI families across them, and conclude with selection guidance for the target modelling context (tabular/time-series/vision; high-stakes vs low-stakes).”  
“Make trade-offs explicit (fidelity vs interpretability, local vs global, explanation stability vs flexibility) and link each trade-off to the research problem.”

**Another way to tell an agent:**

- “Write as a **methods comparison**: define 3–4 method families, summarize strengths/weaknesses, then argue which trade-off your work targets.”

**ML + XAI example (illustrative wording).**

> “For a predictive model used in process operations, explanation methods can be compared on (i) scope (local vs global), (ii) assumptions (additivity, linearity), (iii) stability under perturbations, and (iv) compatibility with domain constraints. Under this design lens, additive feature attribution can support global monitoring via aggregated contributions, while counterfactual explanations can support actionable recourse—but both require careful handling of correlated inputs and feasibility constraints imposed by the process.”

(Foundational XAI method families and taxonomy-style discussions are widely surveyed; counterfactual explanations are often framed as “minimal changes” for alternate outcomes. citeturn3search0turn1search1turn1search6turn1search2)

**Example:**
“Feature-attribution methods can quantify input importance, while counterfactual explanations emphasize actionable changes. Surrogate models improve interpretability but may distort local behavior. For domain-facing deployments, the key limitation is that these methods rarely map explanations to process-consistent causes (e.g., what mechanism would produce the observed pattern), motivating approaches that couple XAI with domain constraints.”

### Taxonomy or typology-building synthesis (categorize → locate your niche)

**What this style does.** You build (or adapt) a **classification scheme** that becomes the spine of the review (e.g., “intrinsic vs post-hoc”, “model-specific vs model-agnostic”, “explanation-by-attribution vs explanation-by-example vs explanation-by-text”, etc.). Review-methodology literature also emphasises that clarifying terms and categories can reduce confusion caused by inconsistent terminology. citeturn0search8turn3search0turn0search3

**Best when:** you want to _position_ your approach precisely.

**Structure:** define axes → classify works → show what quadrant is sparse → gap.

**Common verbs that fit.** _defines, delineates, distinguishes, classifies, taxonomy-building, formalises, unifies, organises, maps, categorizes, distinguishes, partitions, positions, maps, situates, classifies.._

**How to tell an agent to write like this.**  
“Write a **taxonomy-building literature review**: propose classification axes, place key methods into the taxonomy, then use it to identify empty cells (research gaps) relevant to an ML+XAI pipeline.”  
“Resolve terminology conflicts explicitly and keep the taxonomy consistent throughout the review.”

**Another way to tell an agent:**

- “Create a **taxonomy** with 2–3 axes and classify papers into categories. Conclude by identifying the underexplored category that my study addresses.”

**ML + XAI example (illustrative wording).**

> “We organise XAI methods along two axes: (i) explanation scope (local vs global) and (ii) access assumptions (model-agnostic vs model-specific). This taxonomy clarifies that local model-agnostic methods can explain individual predictions without exposing internal parameters, whereas model-specific gradient-based attributions leverage model structure but inherit sensitivity to modelling choices. The taxonomy also reveals an underdeveloped quadrant: mechanism-constrained counterfactual explanations for process systems, where feasibility and causal plausibility must be enforced.”

(XAI surveys explicitly offer taxonomies; methodological critiques of attribution reliability also motivate caution when positioning methods. citeturn3search0turn2search2turn2search1)

**Example:**
“Existing studies can be mapped along two axes: (i) explanation type (attribution vs. examples vs. counterfactuals) and (ii) grounding (purely statistical vs. process/physics-linked). Most work concentrates on statistical post-hoc attribution, whereas fewer studies operationalize explanations that align with process causes. This leaves a niche for models that predict accurately and produce explanations interpretable as candidate mechanisms.”

### Debate mapping and tension-focused synthesis

**What this style does.** You structure the review around **central tensions** (e.g., accuracy vs interpretability; transparency vs proprietary constraints; explanation usefulness vs explanation fidelity; association-based explanations vs causal/mechanistic claims). Integrative review guidance explicitly notes discrepancy, debate, and conflicting perspectives as common catalysts for review work. citeturn5view0turn2search1turn0search3

**Common verbs that fit.** _debates, contests, critiques, problematises, challenges, reconciles, triangulates, weighs, adjudicates._

**How to tell an agent to write like this.**  
“Write the literature review as **tension mapping**: identify 3–5 key controversies, summarise the strongest arguments on each side, then synthesise what each view implies for an ML model with XAI in the target domain.”  
“Use a balanced scholarly tone: steelman each side before proposing a synthesis and your research stance.”

**ML + XAI example (illustrative wording).**

> “A persistent debate concerns whether post-hoc explanations provide sufficient grounding for trust, or whether they risk creating ‘plausible stories’ that do not track true model behaviour. In parallel, the literature debates whether feature attributions support causal interpretation, especially under correlated inputs and confounding. Synthesising these tensions suggests that an ML+XAI workflow should treat explanations as _diagnostic artefacts_ requiring validation (stability tests, sensitivity checks, and domain feasibility screening), rather than as direct evidence of process causality.”

(Interpretability debates and the risk of underspecified claims are well documented; evaluation critiques such as randomisation/sanity checks highlight why explanation artefacts should be validated. citeturn2search1turn2search2turn2search27)

### Scoping or landscape mapping synthesis

**What this style does.** A scoping-style narrative maps the **breadth** of evidence: key concepts, where methods are applied, and what gaps exist—without necessarily doing full critical appraisal or effect-size synthesis. Scoping review frameworks and reporting guidance describe scoping as evidence mapping that identifies concepts, sources, and gaps. citeturn4search9turn4search2turn4search17

**Common verbs that fit.** _maps, charts, surveys, catalogues, profiles, enumerates, identifies clusters, highlights gaps, characterises landscapes._

**How to tell an agent to write like this.**  
“Write the literature review as a **scoping map**: define inclusion criteria broadly, map where XAI is applied (domains, data types, model families), and report gaps and under-explored combinations.”  
“Emphasise coverage and categorisation over deep appraisal; end with a structured research agenda for the target ML+XAI application.”

**ML + XAI example (illustrative wording).**

> “We map the application landscape of explainable AI for predictive models across (i) domain sectors, (ii) data modalities, and (iii) explanation families. This scoping synthesis shows that attribution-based methods dominate certain modalities, while actionable counterfactual approaches appear more often in decision-support contexts. The map highlights a gap in studies that explicitly validate explanations against domain constraints (e.g., conservation laws, process feasibility), motivating a mechanism-aware XAI pipeline.”

(Scoping review definitions and reporting guidance support this mapping objective; XAI surveys support the existence of multiple method families suited to different contexts. citeturn4search2turn4search9turn3search0)

### Systematic evidence synthesis style

**What this style does.** This is the “protocol-forward, transparency-forward” writing style: you foreground **how studies were identified, selected, appraised, and synthesised**, then present results with traceability. PRISMA 2020 provides updated reporting guidance for systematic reviews, and systematic-review guidance in engineering/software fields emphasises auditing, rigour, and reproducibility. citeturn4search0turn4search7turn4search36

**Common verbs that fit.** _pre-registered, screened, included/excluded, extracted, appraised, assessed risk of bias/quality, synthesised, aggregated, stratified._

**How to tell an agent to write like this.**  
“Write the literature review in a **systematic-review reporting style**: state the protocol, search strategy, inclusion/exclusion criteria, screening flow, and synthesis method; then report findings with transparent traceability.”  
“Use PRISMA-like language, emphasising reproducibility and limits of evidence.”

**ML + XAI example (illustrative wording).**

> “Studies were systematically identified and screened to evaluate evidence on whether post-hoc explanation methods improve trust, debugging, or decision quality in applied ML. Evidence was extracted on task type, model family, explanation method, evaluation protocol, and reported outcomes. Synthesised results indicate heterogeneous evaluation practices and limited evidence linking explanation artefacts to real-world decision improvements, motivating more standardised XAI evaluation and domain-grounded validation.”

(The structure and language are aligned with PRISMA’s emphasis on transparent identification/selection/synthesis, and with systematic-review guides that stress auditable methodology. citeturn4search0turn4search7turn4search36)

### Integrative theory-building synthesis

**What this style does.** You use diverse evidence to **build a conceptual framework** that explains relationships, proposes mechanisms, or unifies streams. Integrative review guidance defines integrative reviews as generating new knowledge through critique and synthesis—often producing new frameworks or reconceptualisations—and stresses alignment between review purpose and structure. citeturn5view0turn0search2turn0search3

**Common verbs that fit.** _integrates, conceptualises, reconceptualises, theorises, posits, proposes, elaborates, refines, unifies._

**How to tell an agent to write like this.**  
“Write an **integrative, theory-building literature review**: critique and synthesise across ML, XAI, and the domain literature to propose a conceptual framework linking model design → explanation method → user action → outcomes.”  
“End with propositions or testable hypotheses that motivate the proposed ML+XAI model and validation plan.”

**ML + XAI example (illustrative wording).**

> “Synthesising across ML deployment studies and XAI method research, we propose that explanation utility is mediated by (i) fidelity to model behaviour, (ii) stability under perturbation, and (iii) alignment with domain constraints. Within this framework, post-hoc attributions support sensemaking and monitoring, while counterfactuals support actionable interventions—yet both require feasibility checks and, where possible, causal or mechanistic grounding. This integrative model motivates a pipeline that couples predictive modelling with explanation validation and domain-consistent reasoning.”

(Integrative review definitions and purposes support framework-building; XAI surveys provide the method landscape used as inputs to integration. citeturn5view0turn3search0turn0search3)

## 5) Problem → attempted solutions → persistent limitation (problem–solution–gap)

**Best when:** you want a clean “why this matters” arc.

**Structure:** problem → what the literature tried → why it’s still not enough → your angle.

**Example:**
“Opaque predictions hinder adoption in high-stakes settings. Post-hoc XAI was introduced to address this by exposing feature influence. However, many explanations remain sensitive to model choice and do not directly support process-level interpretation. This motivates integrating XAI with domain constraints so that explanations correspond to plausible underlying causes rather than merely correlated drivers.”

**Common verbs:** addresses, mitigates, alleviates, attempts, introduces, falls short, remains, persists.

**Tell an agent:**

- “Use a **problem–solution–gap** structure: state the problem, review solution attempts, explain why limitations remain, then motivate my approach.”

## 6) Convergent synthesis (many studies agree → what follows)

**Best when:** you have strong consensus results to stand on.

**Structure:** multiple strands converge → consolidate takeaways → implications → gap is “next step.”

**Example:**
“Across datasets and architectures, studies consistently report that predictive gains often come at the cost of transparency. In parallel, XAI research converges on the need for fidelity checks and stability of explanations. Taken together, the next step is not only to _explain_ predictions but to test whether explanations align with domain mechanisms—linking influential signals to process-consistent interpretations.”

**Common verbs:** converges, corroborates, aligns, reinforces, supports, collectively indicates, consolidates.

**Tell an agent:**

- “Write a **convergent synthesis**: show where findings agree across papers, then state the implication and the next unmet requirement.”

---

## 7) Debate / dialectical framing (two camps + reconciliation)

**Best when:** the field is split (accuracy vs interpretability, post-hoc vs inherently interpretable, data-driven vs physics-informed).

**Structure:** camp A argument → camp B argument → what each misses → synthesis/niche.

**Example:**
“One camp prioritizes predictive performance using complex models, arguing that accuracy yields operational value. Another emphasizes interpretability, warning that opaque models undermine trust and debugging. Both perspectives are incomplete if explanations remain disconnected from process causes. A reconciliation is to retain strong learners while using XAI plus domain constraints to translate predictions into mechanism-consistent narratives.”

**Common verbs:** argues, contends, maintains, counters, disputes, reconciles, bridges, integrates.

**Tell an agent:**

- “Write the review as a **two-camp debate** (performance-first vs interpretability-first), then propose a synthesis that motivates my XAI + domain-linking approach.”

---

## 8) CARS-style niche claiming (establish → gap → occupy)

This is the broader pattern you referenced from John Swales—but you can do it without the explicit “however” pivot.

**Structure:** establish territory (importance) → establish what’s known → show the gap → occupy the niche (your aim).

**Example:**
“Accurate ML prediction is increasingly central to decision support. Prior studies demonstrate strong performance across a range of tasks and highlight the promise of XAI for transparency. Yet, limited work operationalizes explanations that are interpretable as process-consistent causes. This study builds a predictive model and applies XAI with domain-aligned constraints to connect explanations to plausible mechanisms.”

**Common verbs:** establishes, demonstrates, motivates, notes, identifies, highlights, leaves open, necessitates.

**Tell an agent:**

- “Use **CARS moves**: (1) importance of ML prediction, (2) what prior work achieved in XAI, (3) what’s missing (domain/physics linkage), (4) what my study does to fill it.”

---

## Writing about XAI while avoiding the “explanation equals cause” trap

In ML+XAI literature reviews—especially those aiming to connect explanations to domain/physics/process causes—the most common conceptual mistake is to **slide from association to causation**. Interpretability discussions explicitly warn that “interpretability” is under-specified and that post-hoc explanations can be motivated by diverse aims, which makes it easy to overclaim what an explanation demonstrates. citeturn2search1turn1search3 Explanation methods like local surrogates, additive attributions, gradient-based attributions, or counterfactual explanations can be useful for understanding model behaviour or supporting recourse, but they do not automatically establish physical or causal mechanisms. citeturn1search0turn1search1turn2search0turn1search6turn2search3turn2search27

You can make mechanism-oriented writing more defensible by using a **three-layer claim structure** in the literature review:

- **Layer 1 (model-behaviour claim):** what the model relied on _within the dataset and modelling pipeline_ (an association claim). citeturn1search1turn1search0turn2search0
- **Layer 2 (domain-plausibility claim):** whether that reliance is consistent with known constraints or process knowledge (a plausibility check; not yet causality). citeturn3search11turn3search6
- **Layer 3 (mechanism/causal claim):** whether there is evidence or assumptions sufficient to claim causality (requires causal assumptions, interventions, or mechanistic modelling). citeturn2search3turn2search31turn2search27

A practical reason to keep these layers separate is that some explanation artefacts can look convincing while being insufficiently sensitive to model parameters or data-generating processes, motivating the use of explicit evaluation checks rather than relying on visual appeal. citeturn2search2turn2search6

When your goal is explicitly to connect ML predictions and XAI outputs to physics/process causes, you will often cite and integrate literature on **theory-guided or physics-informed modelling**, where domain knowledge is incorporated into learning and can make explanations more meaningfully aligned with physical constraints. citeturn3search11turn3search6turn3search19 Physics-informed neural networks, for example, are framed as neural networks trained while respecting governing physical laws, and theory-guided data science is framed as integrating scientific knowledge with data-driven modelling to support scientific discovery and interpretable models in scientific domains. citeturn3search6turn3search11turn3search19

image_group{"layout":"carousel","aspect_ratio":"16:9","query":["SHAP summary plot example","LIME local explanation example tabular data","integrated gradients attribution visualization example","counterfactual explanation example machine learning"],"num_per_query":1}

## Verb bank and “tell an agent” prompt patterns for ML + XAI reviews

The verb choices in your literature review signal what kind of intellectual work you are doing—mapping, critiquing, integrating, adjudicating tensions, or building theory. Review-method guidance explicitly treats critique and synthesis as core functions, while concept-centric guidance pushes you toward synthesis statements rather than citation lists. citeturn6search1turn6search0turn5view0

A compact verb bank (organised by rhetorical function) that tends to read naturally in ML+XAI reviews:

**Mapping & describing (good for scoping/landscapes):** _maps, surveys, catalogues, profiles, charts, characterises, identifies clusters, highlights gaps._ citeturn4search9turn4search2turn0search8  
**Comparing & choosing (good for method/design-space reviews):** _compares, benchmarks, contrasts, evaluates, trades off, prioritises, motivates selection, justifies._ citeturn5view0turn3search0  
**Critiquing & bounding claims (good for tension/debate reviews):** _questions, problematises, challenges, qualifies, cautions, limits, complicates, calls into question._ citeturn2search1turn7view0turn5view0  
**Integrating & theory-building (good for integrative reviews):** _synthesises, integrates, reconciles, unifies, conceptualises, reconceptualises, proposes a framework, posits mechanisms._ citeturn5view0turn0search2turn6search13  
**Causality/mechanism discipline (helps avoid overclaim):** _is consistent with, is compatible with, suggests (but does not establish), is indicative of, may reflect, is hypothesised to, requires causal identification, depends on assumptions._ citeturn2search3turn2search31turn2search27

Reusable “tell an agent” prompt macros (copy-paste patterns):

```text
Write the literature review in a [STYLE] structure.
- Use a concept-centric organisation. Avoid author-by-author summaries.
- Keep claims layered: (1) model-behaviour associations, (2) domain plausibility, (3) causal/mechanistic claims.
- Use ML+XAI examples (e.g., SHAP/LIME/counterfactuals) to illustrate synthesis points.
- End each subsection with: “Implication for building an ML model + XAI in [DOMAIN].”
```

```text
STYLE: Design-space comparison
Define 4–7 evaluation dimensions (scope, fidelity, stability, data modality fit, computational cost, feasibility constraints, user/task fit).
Compare XAI method families across dimensions. Conclude with selection guidance and research gaps.
```

```text
STYLE: Integrative theory-building
Synthesize across ML deployment, XAI methods, and domain/process theory to propose a conceptual framework.
State propositions/hypotheses and what empirical tests would validate explanation–mechanism alignment.
```

## Pitfalls and quality checks for ML + XAI literature-review writing

A frequent failure mode is writing a review that is “comprehensive” but not **synthetic**—a chain of citations without an organising logic—while guidance for narrative and concept-centric reviews emphasises critique and synthesis rather than neutral listing. citeturn6search1turn6search0 Another common pitfall in XAI reviews is to treat explanation plots as self-validating rather than something that must be evaluated; work on sanity checks shows that explanation methods can be misleading if judged primarily by appearance. citeturn2search2turn2search6

A practical quality-check set (written to match your ML+XAI + domain-cause objective):

- **Structure–purpose alignment:** Does the review’s structure (temporal/methodological/conceptual) match what the review is trying to achieve? citeturn5view0turn0search3
- **Concept-centric synthesis:** Do paragraphs end with what the literature _collectively implies_ for your modelling pipeline, rather than ending on a citation? citeturn6search0
- **Transparency (if systematic/scoping):** Are searching, selection, and synthesis steps reportable and reproducible, consistent with systematic/scoping guidance? citeturn4search0turn4search2turn4search7
- **XAI claim discipline:** Do you clearly distinguish explanation-of-model from explanation-of-world (association vs mechanism/causality)? citeturn2search3turn2search31turn2search1
- **Explanation validation awareness:** Do you report (or at least discuss) checks on explanation reliability/stability, instead of assuming face validity? citeturn2search2turn2search6
- **Domain plausibility bridge:** When you claim domain alignment, do you point to domain constraints or theory-guided/physics-informed modelling strategies rather than rhetorical plausibility alone? citeturn3search11turn3search6turn3search19
