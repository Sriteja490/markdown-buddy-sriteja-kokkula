> **AI Assistance Declaration:** I used ChatGPT (GPT-6, 2026-10-26) to assist with the README structure, R Markdown formatting, documentation wording, reflection drafts, and an example R script. My prompts and key responses are recorded in `AI_Prompts_Appendix.md`. I verified the R Markdown formatting by knitting the document in RStudio, executed the R script, and independently checked six summary results in Google Sheets using AVERAGEIF, SUMIF, and COUNTIF. I also manually compared sessions S01 and S12 against the original CSV. All calculations were independently checked by me. I am responsible for the accuracy and originality of my final submission..**
>
> **Draft status:** This is an AI-assisted starting document. The bracketed verification statements above must be completed truthfully by the student before submission. Do not claim a check was performed unless you did it.

# Synthetic Study Sessions — R Project Documentation

**BDA400 | Data Science Tools and Techniques | Assignment 1 — Markdown Buddy**  
**Student:** Sriteja Kokkula  
**Student ID:** 664429563  
**Repository name:** `markdown-buddy-sriteja-kokkula`

## Overview

This small R project illustrates how to document a reproducible analysis of **fictional study-session records**. It focuses on clear instructions, understandable inputs and outputs, and transparent AI attribution rather than on making claims about actual people.

The dataset in `data/synthetic_study_sessions.csv` was constructed for demonstration. It contains no personal or externally collected records.

**Goals**

- Explain how a single R script reads and validates a synthetic CSV.
- Summarize study duration and completed tasks by a fictitious cohort.
- Demonstrate a clearly documented output table and simple plot.
- Practice README, R Markdown, Markdown preview, version control, and ethical AI use.

## Repository structure

```text
markdown-buddy-sriteja-kokkula/
├── README.md
├── Script_Documentation.Rmd
├── Reflection.md
├── AI_Prompts_Appendix.md
├── Verification_Log.md
├── .gitignore
├── R/
│   └── study_summary.R
└── data/
    └── synthetic_study_sessions.csv
```

## Requirements and installation

- **R** (install from <https://cran.r-project.org/>)
- **RStudio Desktop** (recommended): <https://posit.co/download/rstudio-desktop/>
- **R Markdown tools** for the documentation file:

```r
install.packages(c("rmarkdown", "knitr"))
```

The demonstration analysis uses **base R** and requires no additional analysis packages.

## Input data

`data/synthetic_study_sessions.csv` has the following fields:

| Field | Type | Meaning |
| --- | --- | --- |
| `session_id` | Text | Artificial record identifier |
| `cohort` | Text | Fictional group `A` or `B` |
| `study_minutes` | Number | Synthetic duration of a study session |
| `completed_tasks` | Integer | Synthetic count of tasks completed |
| `focus_score` | Integer | Synthetic score from 1 to 5 |

**Privacy:** All values are invented, and the file must not be replaced with personal data for this assignment.

## How to run the R script

1. Download or clone this repository.
2. In RStudio, open the project folder and set the working directory to the **repository root**.
3. Review the starter R script and the input data. Revise the script in your own words/code and verify it before submission, as required by the assignment's AI rules.
4. Run the reviewed script:

```r
source("R/study_summary.R")
```

Alternatively, in a terminal opened at the repository root:

```bash
Rscript R/study_summary.R
```

**Expected output locations (not verified yet):**

- `outputs/summary_by_cohort.csv` — one row per synthetic cohort.
- `outputs/mean_study_minutes.png` — a bar chart of mean session duration by cohort.

The `outputs/` folder is created by the script and excluded from Git to keep the repository tidy. **Do not treat these outputs as validated results until you run and cross-check the analysis yourself.**

## Example code

The following illustrates how the script reads a CSV with base R; it is provided as a formatting example and should be checked against the actual script.

```r
sessions <- read.csv("data/synthetic_study_sessions.csv", stringsAsFactors = FALSE)
head(sessions)
```

The script's analysis flow is:

1. Read the synthetic dataset.
2. Validate required columns and permitted numeric values.
3. Summarize the records by cohort.
4. Save a summary CSV and a base R chart.

## R Markdown documentation

Open `Script_Documentation.Rmd` in RStudio and choose **Knit** to preview the script documentation as HTML. The instructional code examples use `eval = FALSE` so knitting the documentation **does not run the analysis or fabricate results**. The student's own run, verification, and independent checks are still required.

## Validation and limitations

--**Verification completed:** R Markdown knitting,
  R script execution, independent Google Sheets
  calculations, and manual dataset spot-checks.
- **Remaining work:** Review the final documentation
  and preview README.md on GitHub.

## Documentation design comparison

This README uses the same high-level structure seen in the public [`tidyverse/dplyr` README](https://github.com/tidyverse/dplyr/blob/main/README.md): a concise **Overview**, **Installation** guidance, and **Usage** examples. This classroom project additionally documents input privacy, required output locations, AI disclosure, and student verification steps.

GitHub's [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) explains the syntax used for headings, lists, links, tables, and fenced code blocks.

## License

No open-source license has been granted for this classroom draft. Contact the student/author before reuse or redistribution. If a license is required later, the student should choose and add one intentionally.

## AI Assistance Disclosure

- **Tool / version / date:** ChatGPT, GPT-6, 2026-10-26.
- **Documented actual request:** “this is another assignment can you please complete this assignment as per requirements.”
- **AI contribution:** Initial README outline and prose; R Markdown organization; sample script scaffold; suggested validation checklist and reflection prompts.
- **Refinement performed in this draft:** Clearer repository paths and output names; explicit synthetic-only privacy scope and unverified-result labels. These are editorial revisions, **not** evidence of a student preview or test.
- **Student responsibilities before submission:** Review all text/code, adapt it in their own work, preview Markdown on GitHub, knit `.Rmd`, run/check the R script, independently verify any calculations in Sheets, and replace pending declarations. See `AI_Prompts_Appendix.md`.
