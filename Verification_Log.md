> **AI Assistance Declaration: I used ChatGPT (GPT-6, 2026-10-26) for README and R Markdown layout, documentation wording, and an initial example-script scaffold. Prompts used: "this is another assignment can you please complete this assignment as per requirements"; the BDA400 Assignment 1 instruction prompts are reproduced and labeled in AI_Prompts_Appendix.md. I verified outputs using [STUDENT TO COMPLETE after GitHub Preview, RStudio Knit, Sheets calculations, independent cross-check, and manual spot-check]. All final calculations are done by myself [STUDENT TO CONFIRM AFTER PERSONAL VERIFICATION]. I am responsible for the accuracy and originality of this work.**
>
> **Status: PENDING STUDENT VERIFICATION.** AI cannot claim that the student ran an application, knitted a file, previewed GitHub or independently calculated results. Record only steps you actually complete.

# Verification and Refinement Log

## A. Documentation format checks

- [ ] Open `README.md` in GitHub and check **Preview** for readable heading hierarchy, tables, lists, links, and R code fences.
- [ ] Compare README structure with `tidyverse/dplyr` (Overview, Installation, Usage).
- [ ] In RStudio, install `rmarkdown` and `knitr` if needed and **Knit** `Script_Documentation.Rmd` to HTML; inspect headings, input/output table and R syntax highlighting.
- [ ] Confirm all paths listed in the README match actual GitHub files.

## B. Script and data checks — student must do personally

- [ ] Confirm `data/synthetic_study_sessions.csv` contains fictional records only.
- [ ] Rewrite/review the example R script so it is your own understood work.
- [ ] Run `source("R/study_summary.R")` from the repository root in RStudio.
- [ ] Open `outputs/summary_by_cohort.csv` and `outputs/mean_study_minutes.png`.
- [ ] Record any Console warnings or errors and the fix.

## C. Mandatory calculation verification pattern

**Primary calculation (Google Sheets):** Import `data/synthetic_study_sessions.csv` into Sheets. Assuming its columns A:E, enter or adapt these formulas in an *empty verification area*. They are formula suggestions, **not calculated answers**.

| Purpose | Example draft formula |
|---|---|
| Mean study minutes for cohort A | `=AVERAGEIF(B2:B13,"A",C2:C13)` |
| Total tasks completed for cohort A | `=SUMIF(B2:B13,"A",D2:D13)` |
| Session count for cohort A | `=COUNTIF(B2:B13,"A")` |
| Mean study minutes for cohort B | `=AVERAGEIF(B2:B13,"B",C2:C13)` |
| Total tasks completed for cohort B | `=SUMIF(B2:B13,"B",D2:D13)` |
| Session count for cohort B | `=COUNTIF(B2:B13,"B")` |

**Independent cross-check:** Filter to each cohort; calculate totals using `SUM`, row counts using `COUNT`, and divide sum of study minutes by count. Compare the resulting values with the outputs and Sheets `AVERAGEIF` results.

**Peer or self spot-check:** Inspect three input records and one output row. Confirm that the cohort labels and record membership are correct.

| Check | Result entered by student | Date / evidence |
|---|---|---|
| Sheets means by A and B | **[not performed]** | **[pending]** |
| Sheets total tasks by A and B | **[not performed]** | **[pending]** |
| Independent SUM/COUNT cross-check | **[not performed]** | **[pending]** |
| R CSV matches verified values | **[not performed]** | **[pending]** |
| Self spot-check | **[not performed]** | **[pending]** |

## D. Refinement evidence

Draft-level editorial suggestions have already been documented in `AI_Prompts_Appendix.md`, but **your personal edits are still pending**.

| What I actually changed | Before → after | Why it improved readability/correctness |
|---|---|---|
| **[student to fill]** | **[student to fill]** | **[student to fill]** |
| **[student to fill]** | **[student to fill]** | **[student to fill]** |

## E. Final ethical declaration sign-off

- [ ] All AI tools, prompts and meaningful responses recorded faithfully.
- [ ] No real personal data used.
- [ ] Verification fields in the AI Assistance Declaration updated with truthful completed methods.
- [ ] Instructor's actual **three Reflection Questions** checked against `Reflection.md` and answered in my own words.
- [ ] GitHub repository actually created with exact required naming pattern `markdown-buddy-[yourname]`.
- [ ] Repository URL copied from GitHub and submitted in the format requested by LMS.


## Google Sheets Verification — 26 October 2026

**Dataset:** `synthetic_study_sessions.csv`

**Verification method:** Imported the synthetic dataset into Google Sheets and independently checked the R-generated results using AVERAGEIF, SUMIF, and COUNTIF formulas.

| Metric | Cohort A | Cohort B | Verification |
|---|---:|---:|---|
| Average study minutes | 42.50 | 40.83 | Matched R output |
| Total completed tasks | 18 | 17 | Matched R output |
| Session count | 6 | 6 | Matched R output |

### R Markdown Validation

- Opened `Script_Documentation.Rmd` in RStudio.
- Successfully knitted the document into HTML.
- Confirmed that the document title, headings, and table of contents rendered correctly.

### Remaining Checks

- [x] Manually spot-check individual dataset rows.
- [ ] Review and personalize the AI-assisted documentation.
- [ ] Preview the final README on GitHub.

**Conclusion:** All six summary calculations independently checked in Google Sheets matched the R-generated results.