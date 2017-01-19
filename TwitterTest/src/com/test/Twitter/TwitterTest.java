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
	// 무언가 잘못되면, 트위터익셉션을 보세요.
	public static void main(String[] args) throws TwitterException {

		ConfigurationBuilder cf = new ConfigurationBuilder();
		cf.setDebugEnabled(true).setOAuthConsumerKey("2J8zHAjtZFDUx3RwAZ0iElt85")
				.setOAuthConsumerSecret("1xTqo0P5F7JeEFrCumwGdnOjB4MEHgOTmxN24SrDXuPF0vlo0f")
				.setOAuthAccessToken("218118624-gx61UVXIC11L55HjTbrmrSLIkcgbxBMe3xiXuDhy")
				.setOAuthAccessTokenSecret("zm3Qwb8wS3GyH7PQ070nMScCkH6Za4qOsQMXs6xTZzTzb");

		TwitterFactory tf = new TwitterFactory(cf.build());
		Twitter twitter = tf.getInstance();

		// twitter4j.properties를 이용해 트위터API에 접근합니다.
		// Twitter twitter = TwitterFactory.getSingleton();

		// 새 검색 조건을 만듭니다.
		Query query = new Query("\"Samsung\"");

		// 검색 결과를 얻어옵니다.
		QueryResult result = twitter.search(query);

		// 모든 결과를 반복처리합니다.
		for (Status tweet : result.getTweets()) {
			// 트윗들을 화면에 표시합니다.
			System.out.println(tweet.getUser().getScreenName() + ":" + tweet.getText());
		}
	}
}