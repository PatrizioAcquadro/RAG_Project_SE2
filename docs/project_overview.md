# Project Overview: Retrieval-Augmented Generation (RAG) for Code Generation

## 1. Context and Motivation

Retrieval-Augmented Generation (RAG) is an emerging paradigm in code generation, combining the strengths of large pre-trained models with information retrieval systems. The goal is to bridge the semantic gap between natural language requirements and source code by retrieving relevant code snippets and fusing them into the generative process. Recent research demonstrates that RAG frameworks can significantly improve the informativeness, correctness, and adaptability of code generation models, particularly when dealing with complex or under-specified user requirements:contentReference[oaicite:0]{index=0}.

This project explores the application and systematic evaluation of RAG frameworks in code generation, providing robust baselines, ablation studies, and empirical insights.

---

## 2. Scientific Background and Related Work

### 2.1. State of the Art in Retrieval-Augmented Code Generation

- **RAG Frameworks:** The SOTA study by Yang et al. (2025) systematically analyzes how retrieval-augmented frameworks (RAF) enhance code generation by leveraging retrieved code snippets to inform the generative process. Their work evaluates key components such as retrieval algorithms (e.g., BM25), fusion strategies (sequential integration, sketch filling), and assesses the effect of retrieval quality and knowledge base curation:contentReference[oaicite:1]{index=1}.
- **Pre-trained Models:** Models such as CodeGen, UniXcoder, CodeT5, and Code Llama are central to recent benchmarks, with empirical results showing that RAG frameworks can improve functional correctness on major datasets (CONCODE, CoNaLa, HearthStone).
- **Recommended Techniques:** BM25 retrieval and sequential integration fusion are recommended for their simplicity and performance, while sketch filling fusion offers further gains in certain settings.

### 2.2. Benchmarks and Evaluation

- **Datasets:** Widely used datasets include HumanEval, MBPP, CONCODE, CoNaLa, and HearthStone. Recent benchmarks (Long Code Arena, LCA) address the limitations of short-context datasets by focusing on project-wide code generation, library-based code use, and more realistic settings:contentReference[oaicite:2]{index=2}.
- **Metrics:** Pass@k, functional correctness, and human/judgmental metrics are the standard, while novel frameworks like CODEJUDGE explore LLM-based semantic evaluation to overcome the limitations of test-based and token-based metrics:contentReference[oaicite:3]{index=3}.

### 2.3. Retrieval Techniques and Fusion Strategies

- **Retrieval Algorithms:** BM25, vector-based retrieval (dense embeddings, FAISS), and hybrid approaches.
- **Fusion Strategies:** Sequential Integration, Sketch Filling, and others, balancing informativeness with computational cost and robustness to noise.

---

## 3. Challenges and Opportunities

- **Semantic Gap:** Despite the progress, a significant challenge remains in closing the gap between NL requirements and precise code. Retrieved code helps as a bridge, but can also introduce noise if not filtered or fused effectively.
- **Knowledge Base Quality:** The quality and relevance of the knowledge base are critical—adversarial or irrelevant snippets can degrade generation performance. Empirical studies highlight the trade-off between retrieval recall, noise, and computational cost.
- **Evaluation Limitations:** Static benchmarks have known limitations (overfitting, contamination, lack of real-world diversity). Recent works stress the need for open, human-in-the-loop evaluation platforms (e.g., Chatbot Arena, LCA):contentReference[oaicite:4]{index=4}:contentReference[oaicite:5]{index=5}.
- **Long Contexts:** New benchmarks (Long Code Arena) test models' ability to use long contexts and library-based code, pushing the limits of model memory and retrieval efficiency.

---

## 4. Project Approach

This project adopts a systematic, modular approach:

- **Controlled Knowledge Bases:** Experiments begin with curated, domain-specific knowledge bases and progressively introduce noise or adversarial examples to stress-test model robustness.
- **Retrieval Ablations:** We compare BM25, dense vector search, and hybrid retrieval, systematically analyzing top-k and context length.
- **Fusion Strategies:** Sequential integration and sketch filling are implemented and benchmarked as per SOTA guidelines.
- **Comprehensive Evaluation:** All experiments use industry-standard benchmarks (HumanEval, MBPP, LCA), with evaluation based on pass@k, CodeBLEU, and LLM-based semantic assessment.

---

## 5. Key References

- **Empirical Study of RAG for Code Generation (Yang et al., 2025)**: [paper link][50†paperSOTA.pdf]
- **Code Llama: Open Foundation Models for Code (Meta AI, 2024)**: [paper link][43†doc2-4-7_codeLLaMa.pdf]
- **Long Code Arena: Benchmarks for Long-Context Code Models (Bogomolov et al., 2024)**: [paper link][49†longCodeArena.pdf]
- **CODEJUDGE: LLM-based Evaluation of Code Generation (Tong et al., 2024)**: [paper link][46†doc8_codeJudge.pdf]
- **VOYAGER: LLM-Powered Embodied Agent (Wang et al., 2023)**: [paper link][45†doc6_Voyager.pdf]
- **AceCoder: Utilizing Existing Code to Enhance Code Generation (Li et al., 2023)**: [paper link][47†doc9_aceCoder.pdf]
- **Text and Code Embeddings by Contrastive Pre-Training (Neelakantan et al., 2022)**: [paper link][42†doc1_codeEmbeddings.pdf]
- **Chatbot Arena: Human Preference Evaluation of LLMs (Chiang et al., 2024)**: [paper link][48†lmarena(LMSYS).pdf]

---

## 6. Further Reading

- [HumanEval and pass@k metrics][44†doc5_codeEval_HumanEval.pdf]
- [Survey of code prompting and library-based code generation][49†longCodeArena.pdf]
- [Prompting techniques and evaluation][47†doc9_aceCoder.pdf]

---

## 7. Acknowledgements

This project is conducted as part of the MSc in Computer Science and Engineering (Artificial Intelligence) at Politecnico di Milano, under the supervision of Prof. Matteo Camilli, Prof. Giovanni Ennio Quattrocchi, Prof. Vincenzo Scotti, and Prof. Davide Yi Xian Hu.
