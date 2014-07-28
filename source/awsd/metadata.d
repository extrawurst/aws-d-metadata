module awsd.metadata;

import vibe.d;

struct Ec2MetaData
{
	string request;
	string[] values; 
}

private static const EC2_BASEURL_METADATA = "http://169.254.169.254";

public static Ec2MetaData Ec2GetMetaData(string _request)
{
	Ec2MetaData result;
	result.request = _request;

	requestHTTP(EC2_BASEURL_METADATA ~ _request,
		(scope req) {},
		(scope res) 
		{
			import std.string:split;
			auto responseStr = res.bodyReader.readAllUTF8();
			result.values = split(responseStr,'\n');
			//logInfo("Response: %s", res.bodyReader.readAllUTF8());
		});

	return result;
}

public static string Ec2GetInstanceId()
{
	auto res = Ec2GetMetaData("/latest/meta-data/instance-id");

	if(res.values.length == 1)
		return res.values[0];
	else
		return "";
}