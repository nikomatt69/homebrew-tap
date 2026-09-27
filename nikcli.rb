# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-27T16:40:44.721Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.403.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.403.0/nikcli-ai-darwin-x64.zip"
      sha256 "87c83c348d5078f033a5263dad40d04b3405cd61d6bb0f682d2670ea7bbccea5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.403.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7bfa5a5ff29bcff9018e0cb395e77032a624a665e3b102a42c2510097b5a9767"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.403.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3f33caf0e934636c6f651fc33f71a641f89923ef53c92b403fdce20b68eec040"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.403.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "79f7668ace988b7be549bab021dda8a5269e2f09054bef7894f17a92bd3be1af"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

