aws-d-metadata
==============

Helper library to fetch meta data of an ec2 instance from within a vide.d application.


usage
=============

this is a dub compatible package.
add it as a dependency in your dub.json
```
{
  ...,
  "dependencies": {
		"aws-d-metadata": ">=0.0.1",
	},
}
```

in your code:
```
import awsd.metadata;

shared static this()
{
  // get a specific MetaData (see amazon docs for all possiblities)
	writefln("%s", Ec2GetMetaData("/latest/meta-data/"));
	// shorthand method to retrieve instance id
	writefln("instance-id: %s", Ec2GetInstanceId());
}
```

For the possible request urls see amazon docs on "Instance Metadata and User Data" here:
http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html
