package com.test.Twitter;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationBuilder;

public class TwitterTest {
	// ���� �߸��Ǹ�, Ʈ�����ͼ����� ������.
	public static void main(String[] args) throws TwitterException {

		ConfigurationBuilder cf = new ConfigurationBuilder();
		cf.setDebugEnabled(true).setOAuthConsumerKey("2J8zHAjtZFDUx3RwAZ0iElt85")
				.setOAuthConsumerSecret("1xTqo0P5F7JeEFrCumwGdnOjB4MEHgOTmxN24SrDXuPF0vlo0f")
				.setOAuthAccessToken("218118624-gx61UVXIC11L55HjTbrmrSLIkcgbxBMe3xiXuDhy")
				.setOAuthAccessTokenSecret("zm3Qwb8wS3GyH7PQ070nMScCkH6Za4qOsQMXs6xTZzTzb");

		TwitterFactory tf = new TwitterFactory(cf.build());
		Twitter twitter = tf.getInstance();

		// twitter4j.properties�� �̿��� Ʈ����API�� �����մϴ�.
		// Twitter twitter = TwitterFactory.getSingleton();

		// �� �˻� ������ ����ϴ�.
		Query query = new Query("\"Samsung\"");

		// �˻� ����� ���ɴϴ�.
		QueryResult result = twitter.search(query);

		// ��� ����� �ݺ�ó���մϴ�.
		for (Status tweet : result.getTweets()) {
			// Ʈ������ ȭ�鿡 ǥ���մϴ�.
			System.out.println(tweet.getUser().getScreenName() + ":" + tweet.getText());
		}
	}
}