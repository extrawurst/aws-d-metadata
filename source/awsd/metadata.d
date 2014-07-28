module awsd.metadata;

import vibe.d;

struct AwsMetaData
{
	string request;
	string[] values; 
}

private static const EC2_BASEURL_METADATA = "http://169.254.169.254";

public static AwsMetaData GetAwsData(string _request)
{
	AwsMetaData result;
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