//add this where you need the Banner Ad to be visible

.safeAreaInset(edge: .bottom) {
                               VStack(spacing: 0) {

                    GeometryReader { geo in
                        BannerAdView(width: geo.size.width)
                            .frame(width: geo.size.width, height: 50)
                    }
                    .frame(height: 50)
                    .background(Color.triviaBackground)
                }
            }
