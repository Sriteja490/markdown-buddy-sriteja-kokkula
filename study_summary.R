# AI Assistance Declaration: I used ChatGPT (GPT-6, 2026-10-26) for README and R Markdown layout, documentation wording, and an initial example-script scaffold. Prompts used: "this is another assignment can you please complete this assignment as per requirements"; the BDA400 Assignment 1 instruction prompts are reproduced and labeled in AI_Prompts_Appendix.md. I verified outputs using [STUDENT TO COMPLETE after GitHub Preview, RStudio Knit, Sheets calculations, independent cross-check, and manual spot-check]. All final calculations are done by myself [STUDENT TO CONFIRM AFTER PERSONAL VERIFICATION]. I am responsible for the accuracy and originality of this work.
# AI-assisted starter script scaffold. Assignment instructions require the
# student to revise/verify AI-suggested code, run it personally, and
# independently cross-check any calculations. No execution is claimed here.

# Synthetic Study Sessions: descriptive summary using base R
# Run from the repository root. No real or personal data are used.

input_path <- file.path("data", "synthetic_study_sessions.csv")
if (!file.exists(input_path)) {
  stop("Cannot find synthetic CSV. Set the working directory to the repository root.")
}

sessions <- read.csv(input_path, stringsAsFactors = FALSE)
required_cols <- c("session_id", "cohort", "study_minutes", "completed_tasks", "focus_score")
if (!all(required_cols %in% names(sessions))) {
  stop("Missing one or more required columns in synthetic input.")
}
if (nrow(sessions) == 0L || anyNA(sessions[required_cols])) {
  stop("Input must have at least one row and no missing required values.")
}
if (!all(sessions$cohort %in% c("A", "B")) ||
    !is.numeric(sessions$study_minutes) ||
    !is.numeric(sessions$completed_tasks) ||
    !is.numeric(sessions$focus_score) ||
    any(sessions$study_minutes < 0) ||
    any(sessions$completed_tasks < 0) ||
    any(sessions$completed_tasks != floor(sessions$completed_tasks)) ||
    any(sessions$focus_score < 1 | sessions$focus_score > 5)) {
  stop("A synthetic data field failed validation.")
}

# These descriptive calculations must be verified by the student in Sheets.
mean_minutes <- aggregate(study_minutes ~ cohort, data = sessions, FUN = mean)
total_tasks <- aggregate(completed_tasks ~ cohort, data = sessions, FUN = sum)
session_counts <- aggregate(session_id ~ cohort, data = sessions, FUN = length)
names(mean_minutes)[2] <- "mean_study_minutes"
names(total_tasks)[2] <- "total_tasks_completed"
names(session_counts)[2] <- "session_count"

summary_by_cohort <- merge(merge(mean_minutes, total_tasks, by = "cohort"),
                           session_counts, by = "cohort")
summary_by_cohort <- summary_by_cohort[order(summary_by_cohort$cohort), ]

output_dir <- "outputs"
if (!dir.exists(output_dir)) dir.create(output_dir, recursive = TRUE)
write.csv(summary_by_cohort,
          file.path(output_dir, "summary_by_cohort.csv"),
          row.names = FALSE)

png(filename = file.path(output_dir, "mean_study_minutes.png"),
    width = 900, height = 570)
barplot(summary_by_cohort$mean_study_minutes,
        names.arg = summary_by_cohort$cohort,
        xlab = "Synthetic cohort", ylab = "Mean study minutes",
        main = "Synthetic Study Sessions by Cohort",
        col = "steelblue")
dev.off()

message("Draft script finished. Verify all outputs manually before submission.")
