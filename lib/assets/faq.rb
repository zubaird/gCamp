class Faq

  attr_accessor :question, :answer

  def question
    {
      "What is gCamp?"=> "gCamp is an awesome tool that is going to change your life.
      gCamp is your one stop shop to organize all your tasks and documents.
      You'll also be able to track comments that you and others make.
      gCamp may eventually replace all need for paper and pens in the entire world.
      Well, maybe not, but it's going to be pretty cool.",
      "How do i join gCamp?"=> "  Right now, gCamp is still in development.
      So, there is not a sign up page open to the public, yet!.
      Your best option is to become super best friends with a gCamp developer. They can be found in the
      hanging around gSchool during the day and hitting the hottest clubs at night.",
      "When will gCamp be finished?"=> "  gCamp is a work in progress. That being said, it should be fully
      functional by December 2014.  Functional, but our developers are
      going to continue to improve the sight for the forseeable future.  It's
      going to blow your mind. Organization is only (well, will only) be a click away.
      Amazing!",
    }
  end

  def answer(ask)
    question[ask]
  end

end
