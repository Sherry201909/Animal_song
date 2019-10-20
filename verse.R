#' Create your own song
#'
#' This function allows to create their unique song based on
#' "5 little monkeys jumping on the bed".
#' @param num the number of animals in the song
#' @param animal protagonist
#' @param activity the behavior of animal
#' @param probability the probability of papa calls the doctor
#' @export
#'
#' The function asks the user to imput number, protagonist, activity
#' and the probability of papa calls the doctor to create unique song.
verse <- function(num = 10, animal = 'monkey', activity = 'jumping', probability = 0.5)
  { for(i in c(num:0))
{if(i >= 2){
  animal_plural <- paste0(animal, 's')
  parent <- sample(c('Papa','Mama'), size = 1, prob = c(probability,1-probability))
  cat("\n", i, 'little', animal_plural, activity,'on the bed,\n One fell down and bumped his head,\n',parent,' called the doctor and the doctor said,\n "No more', animal_plural, 'jumping on the bed!"',"\n")
}
  if(i == 1){
    animal_singel <- animal
    parent <- sample(c('Papa','Mama'), size = 1, prob = c(probability,1-probability))
    cat("\n", i, 'little', animal_singel, activity,'on the bed,\n One fell down and bumped his head,\n',parent,' called the doctor and the doctor said,\n "No more', animal_singel, 'jumping on the bed!"',"\n")
  }
  if(i == 0){
    animal_plural <- paste0(animal, 's')
    parent <- sample(c('Papa','Mama'), size = 1, prob = c(probability,1-probability))
    cat("\n", 'No little', animal_plural, activity,'on the bed,\n None fell down and bumped their head,\n',parent,' called the doctor and the doctor said,\n "Put those', animal_plural, 'right to bed!',"\n")
  }
}
}

