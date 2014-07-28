module awsd.metadata;

struct AwsMetaData
{
	string request;
	string[] values; 
}

public static AwsMetaData GetAwsData(string _request)
{
	AwsMetaData res;
	res.request = _request;

	return res;
}