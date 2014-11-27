I'm getting sick of not having all my information caught up and in one place.  I'm going to make a me object for my website that I can just use everywhere.  This is how it will work.

*  have a YAML file for easy upkeep of static data
*  store that file on S3 so it's easy enough to update without deploying anything
*  create nested models with the virtus gem
*  build my resume with that model
*  create an endpoint that serves the data as JSON


I thought this was a great oportunity to use Virtus.  Virtus coerces basic data structures into custom classes.  The great thing is those classes are composable.  So I end up defining the model in a really DRY way!

You may be saying "Patrick, that was way more work than just writing a couple of static html pages!".  Well that is a valid criticism.  I think I'll ultimately want this object for more than just these tasks.  We'll have to see if it's worth it.  I may be just a bunch of YAGNI.