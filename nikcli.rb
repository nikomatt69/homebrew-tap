# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T00:43:21.545Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.278.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.278.0/nikcli-ai-darwin-x64.zip"
      sha256 "60d5b8f6c302250a7bb79befc876fc1472ba647972fe2dbf68ecf2949ea05acb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.278.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3f914556338705ef424a04683f66ac9d6a3898ed2c3bb106872a0e67f93366f7"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.278.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8abcb8183871e096d5ee4b153c34aa1883c0c99589d889c349009b545de24662"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.278.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2230aaee472b24bd5a8337de49dcef6793877975ba5455fe7ca541d38dfa585b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

