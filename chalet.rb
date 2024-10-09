cask "chalet" do
	version "0.7.24"
	sha256 arm: "8990ae69516ac1a1e345aef6f5828a56fe2cca4352a07203ee8916cec8c72a90",
	       intel: "36de3b00fb6e2f72ebc398d38817a0afadca35a9eeed63aa0901472ea27a795c"
	arch arm: "arm64",
	     intel: "x86_64"

	url "https://github.com/chalet-org/chalet/releases/download/v#{version}/chalet-#{arch}-apple-darwin.zip"
	name "Chalet"
	desc "A cross-platform project format & build tool for C/C++"
	homepage "https://www.chalet-work.space"

	livecheck do
		url :stable
		regex(/^v?(\d+(?:\.\d+)+)$/i)
	end

	auto_updates true
	depends_on macos: ">= :big_sur"

	binary "chalet"
end
