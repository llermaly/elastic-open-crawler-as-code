PUT _ingest/pipeline/pricing-pipeline
{
  "processors": [
    {
      "script": {
        "source": """
                ctx['price'] = ctx['price'].replace("$","")
            """
      }
    }
  ]
}