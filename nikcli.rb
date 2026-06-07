# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-07T13:59:24.445Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.55.0/nikcli-ai-darwin-x64.zip"
      sha256 "c7d6adb07b70e551d2de6c8512b8483df6984b5833a81c25c4b3a0f04f65f9c0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.55.0/nikcli-ai-darwin-arm64.zip"
      sha256 "affe56abacf0d4174c14a7be4214fac31a8c0afab7c19e4e5d9039a80cbfea46"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.55.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b7d85348ab07a84b4323a9da97d61a5c4ba1a5c6ba5f49c067029a7c0c0ec43d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.55.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "61a4b2ebfe1b758a7e62e26023fa6e059663d9e62597d946c2f65d76967e2652"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

