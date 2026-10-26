**AI Assistance Declaration:** I used ChatGPT (GPT-6, 2026-10-26) for README and R Markdown structure, documentation wording, reflection drafts, and an example R script scaffold. My prompts and key responses are documented in `AI_Prompts_Appendix.md`. I verified the documentation by knitting the R Markdown file in RStudio and checking its formatting. I ran the R script and independently checked the six summary results using Google Sheets formulas (AVERAGEIF, SUMIF, and COUNTIF). I also manually compared sessions S01 and S12 with the original CSV. I independently recalculated the reported results and am responsible for the accuracy and originality of my final submission.
>
> **Draft reflection only:** The uploaded five-page assignment says to answer "all three Reflection Questions," but their actual wording is **not printed** in the document. The three headings below are proposed questions based on its objectives. Replace them if your LMS or instructor supplies different questions. Personalize every answer after doing your own validation.

# Reflection — Assignment 1: Markdown Buddy

**Student:** Sriteja Kokkula  
**Course:** BDA400 — Data Science Tools and Techniques

## Proposed Question 1: How did AI assist with writing project documentation?

**Draft to personalize:** ChatGPT provided a starting structure with an overview, installation instructions, input and output descriptions, example commands, and a disclosure section. This saved planning effort, but it did not substitute for understanding the R script. The most useful suggestions were clearly named file paths and separate sections for readers who want to install, run, or inspect the project. Before submitting, I need to review the technical claims and confirm that the instructions match the files I actually uploaded.

## Proposed Question 2: What are the strengths and weaknesses of AI-generated Markdown?

**Draft to personalize:** One strength is consistent formatting: headings, code fences, tables and short paragraphs can be organized rapidly. A weakness is that AI may write plausible instructions for files or results that have not been tested. For example, an AI draft can describe a successful script execution without actually having run R. I should therefore use GitHub Preview and RStudio Knit, check all relative paths, and remove claims that cannot be supported by the real project.

## Proposed Question 3: How will I ensure responsible, accurate use of AI?

**Draft to personalize:** I will disclose the AI tool, version, date, prompts, and meaningful assistance. I will only use synthetic data and will not provide personal information to AI services. I will run the R script myself, verify summaries using Google Sheets, repeat an independent calculation, and spot-check sample records. I will record actual checks in `Verification_Log.md` and only then update the declaration saying that I take responsibility for the final work.

## Personal verification notes (complete yourself)

R Markdown preview observations: Successfully knitted Script_Documentation.Rmd to HTML in RStudio. Checked the title, headings, and table of contents.

Manual RStudio/R verification observations: Ran R/study_summary.R successfully. The script generated summary_by_cohort.csv and mean_study_minutes.png.

Google Sheets independent verification: Checked six results using AVERAGEIF, SUMIF, and COUNTIF. All matched the R output. Manually compared sessions S01 and S12 between Google Sheets and the original CSV; both matched.